# D&D Dungeon Master Assistant Agents

This file defines specialized opencode agents for assisting with D&D campaign management, worldbuilding, and game mastering tasks in this repository.

## Available Agents

### campaign-planner
**Purpose**: Handles session preparation, plot development, and campaign arc planning
**Capabilities**:
- Creates detailed session outlines with hooks, encounters, and objectives
- Develops campaign arcs with rising action, climax points, and resolution
- Generates plot threads and NPC motivations
- Tracks campaign timeline and player progress
- Uses templates from `planning/templates/` and `copier_templates/session_prep/`

### worldbuilder
**Purpose**: Creates and maintains campaign settings, locations, and lore
**Capabilities**:
- Designs cities, dungeons, and wilderness areas with detailed descriptions
- Develops cultures, religions, and historical events
- Creates maps and regional relationships
- Maintains world consistency across campaigns
- Organizes content in `docs/resources/worldbuilding/` and campaign-specific folders

### npc-designer
**Purpose**: Generates detailed NPCs with backgrounds, motivations, and mechanics
**Capabilities**:
- Creates NPC stat blocks using D&D 5e rules
- Develops backstories, personality traits, and plot hooks
- Generates appearance descriptions and mannerisms
- Creates NPC relationships and social networks
- Stores NPCs in appropriate campaign or resource directories

### encounter-builder
**Purpose**: Designs combat encounters and skill challenges
**Capabilities**:
- Balances encounters for party level and composition
- Creates tactical maps and terrain features
- Develops monster tactics and environmental hazards
- Generates treasure and experience rewards
- Integrates encounters into session plans

### lore-keeper
**Purpose**: Maintains campaign continuity and shared world elements
**Capabilities**:
- Tracks established lore and prevents contradictions
- Manages recurring NPCs and locations across campaigns
- Updates timeline and historical records
- Cross-references related content and tags
- Ensures consistency with `docs/tags.md` and existing materials

### session-scribe
**Purpose**: Documents and formats session notes for the campaign blog
**Capabilities**:
- Writes engaging session summaries with key events
- Formats content using MkDocs Material theme features
- Creates appropriate frontmatter and metadata
- Generates session recaps with player actions and outcomes
- Uses `make new-post` workflow for new entries

### rules-interpreter
**Purpose**: Explains D&D rules and suggests house rule modifications
**Capabilities**:
- Clarifies complex rules and edge cases
- Researches official rulings and errata
- Proposes balanced house rules for specific campaigns
- Documents rules in `docs/resources/rules.md`
- Maintains consistency with established house rules

### content-organizer
**Purpose**: Manages file organization, navigation, and repository maintenance
**Capabilities**:
- Updates `mkdocs.yml` navigation structure
- Organizes files in appropriate directories (`campaigns/`, `planning/`, `resources/`)
- Maintains tagging consistency with `docs/tags.md`
- Renames and moves files following repository conventions
- Updates index files and cross-references

## Agent Usage Guidelines

- **File Operations**: Agents work primarily within the `docs/` directory structure
- **MkDocs Integration**: Agents understand Material theme features and navigation
- **Template Usage**: Leverage `copier_templates/` for consistent content structure
- **Version Control**: Agents can commit changes when explicitly requested
- **Build Verification**: Run `mkdocs build` to ensure site integrity after major changes

## Repository Context

Agents are designed to work with this D&D notes repository structure:
- **Campaigns**: `docs/campaigns/` - Active and archived campaign materials
- **Planning**: `docs/planning/` - Session prep, templates, and future content
- **Resources**: `docs/resources/` - GM tools, rules, and reference materials
- **Blog**: Session notes and campaign updates via MkDocs blog plugin

All agents follow the established conventions in `CLAUDE.md` and repository guidelines.