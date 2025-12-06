# Dungeons and Dragons
This is a repository I use to keep notes on games I am part of or am currently running. If you are part of my Dungeons and Dragons games, I kindly ask that you proceed no further. If you do... there is no telling what may happen to your character.

## Documentation Site

This project now uses [MkDocs](https://www.mkdocs.org/) with the [Material theme](https://squidfunk.github.io/mkdocs-material/) to serve these notes as a static website.

### Local Development

1. Install the dependencies:

   ```bash
   pip install -r requirements.txt
   ```

2. Start the development server:

   ```bash
   mkdocs serve
   ```

   The site will be available at <http://127.0.0.1:8000>.

3. Build the static site:

   ```bash
   mkdocs build
   ```

   The generated files will be placed in the `site/` directory, which is ignored by Git.

## Londra Session Notes Template

A copier template specifically designed for creating session notes for the Londra D&D campaign.

### Usage

```bash
make new-londra-session
```

### Features

- **Session Numbering**: Supports standard numbering (01, 02, 03...) and special cases (01D for downtime)
- **Customizable Sections**: Choose which sections to include:
  - Overview (common for early sessions)
  - Session Notes (always included)
  - During the Session (recap) (for regular sessions)
  - Stars and Wishes (for feedback)
  - Downtime (for character activities between sessions)
  - Notes (always included)
- **Pre-populated Party Info**: Includes placeholders for all current party members
- **Consistent Formatting**: Matches existing Londra post structure

### Template Variables

- `session_number`: The session number (e.g., "01", "02", "03", "01D")
- `slug`: Filename for the post (defaults to session number)
- `summary`: Short description of the session
- `session_type`: regular, downtime, or special
- `include_overview`: Whether to include Overview section
- `include_stars_wishes`: Whether to include Stars and Wishes section  
- `include_downtime`: Whether to include Downtime section

### Output

Creates a new markdown file in `docs/posts/` with proper frontmatter, Londra tags, and structured sections ready for session notes.

