# NewGame

NewGame is an early Godot 4 technical prototype for a Japanese-style yuri
HD-2D action RPG set in a Japanese-inspired isekai world.

The current goal is not full content production. The project is validating
whether pixel characters, 3D environments, exploration, and real-time combat can
work together under an orthographic HD-2D-style camera.

## Current Focus

The prototype is currently focused on:

- HD-2D visual readability
- Pixel-style characters inside a 3D scene
- Orthographic angled camera and camera follow
- Basic player movement
- Exploration-scale environment blockouts
- Community asset workflow and license tracking

Completed early validation work:

- Phase 0 project baseline
- First Phase 1 visual validation pass
- Kenney Retro Fantasy Kit test slice for 3D environment composition
- Narrative and art direction document for the Japanese yuri isekai premise

## Project Direction

The game direction is:

- Japanese-style yuri RPG
- Japanese-inspired isekai fantasy setting
- Pixel or pixel-like characters
- 3D environment props and blockouts
- Orthographic HD-2D-adjacent presentation
- PC-first technical demo

The first demo should stay story-aware without becoming a full narrative
production too early.

## Requirements

- Godot 4.7.1 or newer Godot 4 build
- Forward+ renderer

The project has been checked with:

```text
Godot 4.7.1 stable
```

## How To Run

1. Open `project.godot` in Godot.
2. Press `F5`.
3. Use `WASD` or the arrow keys to move the placeholder player.

The main scene is:

```text
res://scenes/main.tscn
```

## Repository Layout

```text
assets/      External and placeholder assets
data/        Future structured gameplay data
docs/        Design, validation, asset, and risk documents
scenes/      Godot scenes
scripts/     GDScript prototype code
```

Important scenes:

- `scenes/main.tscn`
- `scenes/player.tscn`
- `scenes/levels/visual_validation_kenney.tscn`

Important docs:

- `docs/technical_validation_plan.md`
- `docs/narrative_art_direction.md`
- `docs/project_structure.md`
- `docs/asset_pipeline.md`
- `docs/asset_register.md`
- `docs/combat_validation.md`
- `docs/risk_register.md`

## Asset Notes

The project currently uses:

- Godot default icon as a temporary placeholder asset
- A handmade SVG pixel-style player placeholder
- A limited import from Kenney Retro Fantasy Kit 2.0

External assets are tracked in:

```text
docs/asset_register.md
```

Kenney Retro Fantasy Kit 2.0 is CC0. The local license copy is stored at:

```text
assets/environments/kenney_retro_fantasy/License.txt
```

## Development Notes

This repository intentionally avoids large RPG systems during the first
validation phase.

Deferred until after the core direction is proven:

- Full story script
- Inventory
- Quest system
- Save/load
- Large world map
- Final character art
- Final soundtrack

The next major validation target is exploration and interaction.
