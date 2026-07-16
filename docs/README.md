# Yuri HD-2D RPG Technical Validation

This document set defines the first technical validation phase for the project.
The current focus is not story production. The focus is proving that the visual
style, exploration interaction, and real-time combat direction are feasible in
Godot 4 Forward+.

## Global Goal

Build a small playable technical demo that validates whether a Japanese-style
yuri pixel RPG can combine:

- HD-2D presentation with 2D pixel characters in a 3D scene
- Exploration and object/NPC interaction
- Real-time action RPG combat
- A scalable Godot project structure
- A practical asset pipeline using community assets, AI-assisted art, and
  tracked licenses

The demo should answer three questions:

1. Does the HD-2D visual route work in Godot 4 Forward+?
2. Does exploration and interaction feel readable and comfortable?
3. Can real-time combat remain clear under the HD-2D camera and sprite setup?

## Current Direction

- Engine: Godot 4
- Renderer: Forward+
- Language: GDScript for the first prototype
- View: 3D scene with orthographic angled camera
- Characters: Sprite3D or AnimatedSprite3D
- Target: PC-first technical demo

## Documents

- [technical_validation_plan.md](technical_validation_plan.md): overall phase
  plan and validation goals
- [asset_pipeline.md](asset_pipeline.md): community asset and AI art strategy
- [combat_validation.md](combat_validation.md): real-time combat prototype scope
- [project_structure.md](project_structure.md): proposed folders and system
  responsibilities
- [risk_register.md](risk_register.md): known technical and production risks
- [asset_register.md](asset_register.md): license and source tracking template

## Non-Goals For The First Validation

The first validation phase should avoid expanding into full production too soon.
These are intentionally out of scope for now:

- Full story script
- Complete character writing
- Large world map
- Inventory system
- Quest system
- Save/load system
- Final character art
- Final soundtrack
- Steam-ready polish

These systems can be added after the visual, interaction, and combat direction
has been proven.
