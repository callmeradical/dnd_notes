# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a D&D notes repository that contains campaign materials, worldbuilding content, and game master resources. It serves as both a personal note-keeping system and a documentation site built with MkDocs.

## Development Commands

### MkDocs Operations
- **Install dependencies**: `pip install -r requirements.txt`
- **Serve locally**: `mkdocs serve` (available at http://127.0.0.1:8000)
- **Build static site**: `mkdocs build` (outputs to `site/` directory)

## Repository Structure

The repository is organized into three main sections under the `docs/` directory:

### Resources (`docs/resources/`)
Centralized GM tools and reference materials:
- `rules/` - Custom house rules and mechanics (combat, resting, skill checks, etc.)
- `worldbuilding/` - Setting elements (cities, dungeons, traps, travel, etc.)
- `tools/` - Practical utilities (DM screens, NPC names, experience tracking)
- `guides/` - Best practices and workshops (campaign organization, city building)

### Planning (`docs/planning/`)
Campaign preparation and future content:
- `templates/` - Reusable session and campaign templates
- `future-campaigns/` - Ideas and concepts for upcoming campaigns  
- `utilities/` - Planning tools and work-in-progress materials

### Campaigns (`docs/campaigns/`)
All campaign materials are archived:
- `bastion/` - "Bastion: The Last City" campaign
- `taldorei/` - Taldorei campaign materials
- `tyranny-of-dragons/` - Miscreants campaign
- `sessions/` - Numbered session archives

## File Conventions

- Each major section has an `index.md` file providing navigation and overview
- Markdown files use `.md` extension throughout
- Legacy `_index.md` files contain frontmatter with TOML format (`+++` delimiters)
- Campaign materials follow structured formats with hooks, fronts, and planning sections

## MkDocs Configuration

- Site uses Material theme
- Documentation source is the repository root (`docs_dir: .`)
- Navigation is minimal, focused on the main index page
- Static files are generated to `site/` directory (git-ignored)