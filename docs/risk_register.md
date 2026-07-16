# Risk Register

## Purpose

Track known risks during technical validation so the project does not drift into
production before core uncertainties are resolved.

## Visual Risks

### HD-2D Style May Be Hard To Read

Risk:

- Pixel characters may look disconnected from 3D environments.
- Camera angle may make movement or combat unclear.

Mitigation:

- Validate with placeholder assets early.
- Tune scale, shadows, lighting, and camera before final art.
- Test movement and combat in the same camera setup.

### Sprite3D Facing May Look Wrong

Risk:

- Billboard sprites may feel flat or rotate strangely.
- Directional animations may not match movement.

Mitigation:

- Test billboard modes.
- Test 4-direction or 8-direction sprite sets.
- Keep player movement and facing rules simple at first.

### Post-Processing May Hide Gameplay

Risk:

- Fog, bloom, and depth effects may make combat harder to read.

Mitigation:

- Treat post-processing as adjustable.
- Use combat readability as the priority.
- Keep effects subtle until the core loop works.

## Combat Risks

### Attack Ranges May Be Unclear

Risk:

- The angled camera may make it hard to judge hit distance.

Mitigation:

- Use visible attack effects.
- Keep early hitboxes generous.
- Add debug visualization during development.

### Collision And Sprite Scale May Diverge

Risk:

- The player may visually hit or miss in ways that do not match collision.

Mitigation:

- Keep collision simple.
- Use consistent scale rules.
- Validate with debug shapes before adding detailed art.

### Enemy AI Could Expand Too Fast

Risk:

- AI complexity may consume time before the core combat loop is proven.

Mitigation:

- Start with one enemy and one attack.
- Use a small state machine.
- Defer pathfinding unless the scene requires it.

## Asset Risks

### Asset Styles May Clash

Risk:

- Community assets and AI art may not share a consistent style.

Mitigation:

- Accept mixed placeholders during early validation.
- Use color grading and lighting to unify the scene.
- Choose one final art direction only after systems are validated.

### Licensing May Become Unclear

Risk:

- Assets may become impossible to use commercially if their source is not
  tracked.

Mitigation:

- Record every external asset in the asset register.
- Prefer CC0 or clearly commercial-friendly assets.
- Avoid assets without clear license terms.

### AI Assets May Require Heavy Cleanup

Risk:

- AI-generated sprites may not be production-ready.

Mitigation:

- Use AI primarily for concept art and mood exploration.
- Manually clean or redraw assets chosen for production.
- Do not depend on AI for consistent animation until tested.

## Scope Risks

### Story May Expand Before Systems Are Proven

Risk:

- Writing and content production may distract from technical validation.

Mitigation:

- Keep the first demo story-light.
- Use temporary interaction text.
- Prioritize visual, interaction, and combat proof.

### Too Many RPG Systems Too Early

Risk:

- Inventory, quests, save/load, and progression may slow validation.

Mitigation:

- Defer these systems.
- Build only what is needed for the technical slice.

## Current Highest Risks

1. Real-time combat readability under the HD-2D camera
2. Pixel character and 3D scene visual cohesion
3. Asset style and license management
4. Scope growth before the core loop is proven
