# Technical Validation Plan

## Purpose

The purpose of the first demo is to validate technology and production
direction, not to deliver a complete narrative slice.

The demo should prove that the project can support:

- HD-2D visual composition
- Exploration in a 3D space with pixel characters
- Object and NPC interaction
- Real-time combat
- A maintainable Godot architecture
- A realistic asset pipeline

## Phase 0: Project Baseline

Goal: establish a stable Godot project foundation.

Current scope:

- Godot 4 project using Forward+
- Main scene
- Basic 3D environment
- Orthographic angled camera
- Player scene
- Sprite3D player placeholder
- Basic movement
- Initial folder structure

Implemented baseline additions:

- Camera follows the player with an orthographic angled view.
- Ground and platform have static collision.
- Player movement uses `CharacterBody3D` with gravity and slide movement.
- A temporary grid floor helps judge movement distance and direction.
- Initial `assets`, `data`, `scenes`, and `scripts` subfolders are in place.

Acceptance criteria:

- The project opens cleanly in Godot.
- The main scene runs with F5.
- The player can move in the 3D scene.
- The camera gives an early HD-2D-like angle.
- The project can be extended without replacing the baseline.

Status: complete. Verified with Godot 4.7.1 headless project load; in-editor F5
playtest is still recommended for camera and movement feel.

## Phase 1: HD-2D Visual Validation

Goal: prove that the visual target is achievable before investing in large
systems or final art.

Scope:

- Improved 3D blockout for a small test environment
- Pixel character rendered as Sprite3D or AnimatedSprite3D
- Orthographic camera tuning
- Camera follow behavior
- Directional light setup
- Fog, glow, and basic post-processing
- Pixel texture import settings
- Basic shadow and grounding solution
- Occlusion tests with 3D objects
- Scale tests between characters and environment

Implemented visual validation additions:

- Replaced the default icon with a crisp placeholder pixel character.
- Added a simple ground shadow under the player for grounding checks.
- Added foreground posts, a rear wall, and scale markers for occlusion and
  proportional readability tests.
- Kept the temporary grid floor active for movement readability, with depth
  handling tuned so the player draws over it.
- Configured the placeholder character import for uncompressed, non-mipped
  pixel-style rendering.
- Added a limited Kenney Retro Fantasy Kit scene slice to test community 3D
  assets against the pixel character and orthographic camera.

Acceptance criteria:

- A screenshot clearly reads as a pixel character inside a 3D scene.
- The camera angle feels close to HD-2D rather than plain top-down 2D.
- The character appears grounded and correctly scaled.
- The player can move without visual jitter or confusing perspective.
- Nearby 3D objects can occlude or frame the character without breaking
  readability.

Status: complete for the first visual validation pass. Verified with Godot
4.7.1 headless project load; in-editor F5 screenshot review should continue to
tune taste-level camera, scale, and palette choices.

## Phase 2: Exploration And Interaction Validation

Goal: prove the basic RPG exploration loop.

Scope:

- Reusable interactable component
- Player interaction detection
- "Press E" style prompt
- Simple information/dialogue box
- Interaction lock/unlock for player movement
- Test objects such as sign, lamp, NPC, pickup, or trigger area
- A small set of interaction types sharing one system

Acceptance criteria:

- The player can approach an object and receive a prompt.
- Pressing the interaction key triggers the correct response.
- Player movement is disabled when interaction UI requires focus.
- Interaction ends cleanly and control returns to the player.
- The system can support NPCs, props, pickups, and event triggers.

## Phase 3: Real-Time Combat Core Validation

Goal: prove that the project can support real-time action RPG combat.

Initial combat loop:

1. Enemy detects player.
2. Enemy enters combat state.
3. Player attacks or dodges.
4. Enemy tracks and attacks.
5. Both sides can take damage.
6. Enemy can be defeated.
7. Combat ends and exploration resumes.

Scope:

- Player HP
- Enemy HP
- Normal attack
- Hitbox and hurtbox components
- Damage data
- Knockback
- Invincibility frames
- Dodge or dash
- Enemy AI with idle, chase, attack, and return states
- Exploration/combat state switching
- Basic UI for HP and enemy status

Acceptance criteria:

- The player can damage an enemy.
- The enemy can damage the player.
- Attacks have readable startup, active, and recovery moments.
- Hit reactions are visible.
- Knockback does not break collision or camera readability.
- The enemy can be defeated.
- The game returns to exploration after combat.

## Phase 4: Combat Presentation Validation

Goal: make combat readable and satisfying inside the HD-2D style.

Scope:

- Attack effect placeholder
- Hit spark placeholder
- Hurt flash
- Ground shadow
- Directional sprite or facing behavior
- Small camera shake
- Enemy warning indicator
- HP bars
- Placeholder sound effects
- Particle tests

Acceptance criteria:

- Player and enemy actions are readable from the angled camera.
- Attack ranges are understandable.
- Hit feedback is clear.
- Effects do not obscure the characters too much.
- The camera style supports combat rather than fighting against it.

## Phase 5: Integrated Technical Slice

Goal: combine visual, exploration, and combat systems into one small playable
demo.

Possible flow:

1. Player spawns in a small station-like test environment.
2. Player explores and interacts with one or more props.
3. A trigger or interaction spawns an enemy.
4. Player enters real-time combat.
5. Player defeats the enemy.
6. The scene changes state or displays a simple completion message.

Acceptance criteria:

- Visual style is coherent enough for a prototype.
- Exploration and combat connect without major bugs.
- The player understands when they are exploring and when they are fighting.
- The systems are separated enough to be extended.
- Performance is stable on the development machine.

## First Validation Priorities

Priority order:

1. HD-2D visual readability
2. Player movement and camera feel
3. Interaction loop
4. Real-time combat loop
5. Combat feedback
6. Asset pipeline repeatability

If a later feature threatens an earlier priority, the earlier priority wins.
