# Real-Time Combat Validation

## Goal

Validate whether an HD-2D Godot project can support readable, responsive
real-time action RPG combat.

The first combat version should be small and system-focused. It should not aim
for final balance, final animation, or complex enemy design.

## Combat Style

Initial target:

- Small-area real-time combat
- Player-controlled movement
- Normal attack
- Dodge or dash
- Enemy chase and attack behavior
- HP-based defeat
- Clear hit feedback

This is closer to a lightweight action RPG than a turn-based JRPG.

## Core Components

Suggested components:

- `health_component.gd`
- `hitbox.gd`
- `hurtbox.gd`
- `damage_data.gd`
- `attack_component.gd`
- `knockback_component.gd`
- `enemy_ai.gd`
- `combat_state.gd`

These names are provisional and can change after implementation begins.

## Player Combat Requirements

The first player combat prototype should support:

- HP
- Basic attack input
- Attack cooldown or recovery
- Hitbox activation only during active attack frames
- Dodge or dash
- Temporary invincibility after taking damage
- Knockback response
- Movement lock or slowdown during attack

## Enemy Combat Requirements

The first enemy prototype should support:

- Idle state
- Detection range
- Chase state
- Attack range
- Attack state
- Cooldown
- Hurt state
- Defeated state
- Optional return-to-origin behavior

## Hit Detection Model

Recommended approach:

- Use Area3D-based hitboxes and hurtboxes.
- Keep collision layers explicit.
- Let hitboxes carry damage data.
- Let hurtboxes route damage to health components.
- Use short-lived or toggled hitboxes for attacks.

This keeps combat logic reusable between player and enemies.

## HD-2D Combat Concerns

The camera and sprite setup may create combat-specific problems:

- Attack range may be hard to judge.
- Sprite facing may look wrong in 3D space.
- 3D collision may not match 2D sprite silhouettes.
- Effects may hide hitboxes.
- Knockback may look strange on angled terrain.
- Depth ordering may confuse player/enemy positions.

The combat validation should test these issues early.

## First Enemy

The first enemy should be intentionally simple.

Recommended placeholder:

- A shadow-like enemy
- One melee attack
- Short chase range
- Clear wind-up
- Low HP

The enemy should exist to validate the system, not to be interesting yet.

## Acceptance Criteria

The combat prototype is successful when:

- The player can hit an enemy.
- The enemy can hit the player.
- HP changes correctly.
- Damage cannot trigger repeatedly from one attack unless intended.
- Knockback feels readable.
- Dodge or dash can avoid damage.
- Enemy defeat works.
- Combat can start and end cleanly.
- The HD-2D camera does not make combat unreadable.

## Deferred Features

Do not implement these until the core loop works:

- Combos
- Multiple weapons
- Magic system
- Party members
- Lock-on camera
- Status effects
- Boss mechanics
- Equipment
- Skill trees
- Advanced animation blending
