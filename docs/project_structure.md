# Project Structure

## Goal

Keep the first prototype organized without over-engineering it. The structure
should make it easy to replace assets, add systems, and keep gameplay code away
from one-off scene details.

## Proposed Folder Layout

```text
assets/
  characters/
  environments/
  effects/
  ui/
  audio/

data/
  dialogue/
  combat/
  items/

docs/

scenes/
  main.tscn
  player.tscn
  npcs/
  enemies/
  ui/
  props/
  levels/

scripts/
  player/
  interaction/
  combat/
  ui/
  state/
  camera/
```

This layout can be introduced gradually. The current prototype does not need
every folder immediately.

## Scene Responsibilities

`main.tscn`

- Temporary entry point
- Loads the current test environment
- Contains world environment, camera, light, and prototype objects

`player.tscn`

- Player body
- Player sprite or animation
- Collision
- Movement controller
- Combat controller later

`enemies/*.tscn`

- Enemy body
- Enemy sprite
- Collision
- AI
- Health
- Hitbox/hurtbox setup

`ui/*.tscn`

- Interaction prompt
- Dialogue or message box
- HP UI
- Combat indicators

`levels/*.tscn`

- Environment blockouts and future playable areas

## Script Responsibilities

Player:

- Movement input
- Interaction input
- Combat input
- Player state transitions

Interaction:

- Detect interactable objects
- Show prompt
- Trigger interaction
- Lock/unlock movement when needed

Combat:

- Health
- Hitbox/hurtbox
- Damage routing
- Attack timing
- Knockback
- Enemy AI
- Combat state

UI:

- Prompt display
- HP display
- Dialogue or message display
- Combat feedback

State:

- Global prototype flags
- Relationship or story variables later
- Demo completion state

Camera:

- Orthographic follow
- Combat camera tuning
- Camera shake
- Optional bounds

## Autoload Candidates

Possible future autoloads:

- `GameState`
- `InputRouter`
- `SceneLoader`
- `AudioManager`

Do not add all of these immediately. Add an autoload only when a system needs
global access.

## Naming Guidelines

Suggested naming style:

- Scenes: `snake_case.tscn`
- Scripts: `snake_case.gd`
- Nodes: `PascalCase`
- Export variables: `snake_case`
- Input actions: `snake_case`

Examples:

- `player_controller.gd`
- `health_component.gd`
- `station_platform.tscn`
- `attack_light`
- `interact`

## Architecture Rule

Prototype code can be simple, but avoid putting every feature into one script.

Good early separation:

- Movement script controls movement.
- Interaction script controls interaction.
- Combat scripts control combat.
- UI scripts control UI.

This keeps the prototype flexible without slowing development too much.
