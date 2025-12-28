# Copier Templates

This directory contains [Copier](https://copier.readthedocs.io/) templates that help generate new content for the notes site.

## Unified Post Template

```
copier copy copier_templates/session_prep docs/posts
```

This template supports multiple post types with a single prompt flow:
- Session prep
- Session log/recap
- Londra session
- Downtime note
- General post

Session prep uses a Lazy DM-style outline (character review, strong start, possible scenes, fantastic locations, secrets/clues, important NPCs, monsters, treasure).

All posts are created in `docs/posts/` with a prefix-based filename. You'll be prompted for campaign prefix, post type, and the fields relevant to that type.

Legacy templates (`copier_templates/post` and `copier_templates/londra_session`) are no longer used by the Makefile.

## Campaign Content Template

```
copier copy copier_templates/campaign_content .
```

Creates campaign-scoped content (NPCs, items, locations, plots) in a campaign-specific subdirectory under `docs/campaigns/`. You'll be prompted for campaign, content type, title, and summary.
