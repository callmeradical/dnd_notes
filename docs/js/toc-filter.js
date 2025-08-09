(function () {
  // Re-run on every page change (Material uses instant loading)
  const attach = () => {
    const sidebar = document.querySelector('aside.md-sidebar--secondary');
    if (!sidebar) return;

    const toc = sidebar.querySelector('[data-md-component="toc"]');
    if (!toc || toc.querySelector('#toc-filter-input')) return;

    // Insert input
    const wrapper = document.createElement('div');
    wrapper.className = 'toc-filter';
    wrapper.innerHTML = `
      <input id="toc-filter-input" type="search" placeholder="Filter headings…" aria-label="Filter headings">
      <button type="button" title="Clear" aria-label="Clear filter">×</button>
    `;
    toc.prepend(wrapper);

    const input = wrapper.querySelector('input');
    const clearBtn = wrapper.querySelector('button');

    // Utility: debounce
    const debounce = (fn, ms = 120) => {
      let t; return (...args) => { clearTimeout(t); t = setTimeout(() => fn(...args), ms); };
    };

    // Hide/show via class
    const HIDE = 'toc-filter--hidden';
    const items = Array.from(toc.querySelectorAll('.md-nav__item'));

    const matches = (el, term) => {
      const link = el.querySelector(':scope > .md-nav__link');
      const txt = (link?.textContent || '').trim().toLowerCase();
      return txt.includes(term);
    };

    // Show parent if any descendant matches
    const filter = (termRaw) => {
      const term = termRaw.trim().toLowerCase();
      if (!term) {
        items.forEach(i => i.classList.remove(HIDE));
        return;
      }

      // Precompute which items match directly
      const directMatch = new Map(items.map(i => [i, matches(i, term)]));

      // Mark visible if self or any descendant matches
      items.forEach(i => {
        let visible = directMatch.get(i);
        if (!visible) {
          const descendants = i.querySelectorAll('.md-nav__item');
          for (const d of descendants) {
            if (directMatch.get(d)) { visible = true; break; }
          }
        }
        if (visible) i.classList.remove(HIDE);
        else i.classList.add(HIDE);
      });
    };

    const run = debounce(() => filter(input.value));
    input.addEventListener('input', run);
    input.addEventListener('keydown', (e) => {
      if (e.key === 'Escape') { input.value = ''; filter(''); input.blur(); }
    });
    clearBtn.addEventListener('click', () => { input.value = ''; filter(''); input.focus(); });

    // Optional: focus search with "/" like many docs sites
    document.addEventListener('keydown', (e) => {
      if (e.key === '/' && !e.altKey && !e.ctrlKey && !e.metaKey && !e.shiftKey) {
        const active = document.activeElement;
        const isTyping = active && (active.tagName === 'INPUT' || active.tagName === 'TEXTAREA');
        if (!isTyping) { e.preventDefault(); input.focus(); }
      }
    });
  };

  // For initial load + subsequent navigations in Material
  if (window.document$) {
    window.document$.subscribe(attach);
  } else {
    document.addEventListener('DOMContentLoaded', attach);
  }
})();
