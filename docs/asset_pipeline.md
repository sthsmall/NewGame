# Asset Pipeline Strategy

## Goal

The project should avoid spending early development time on final art. The first
technical demo should use a practical mix of:

- Community assets
- AI-assisted art
- Simple handmade placeholders
- Godot-native blockout geometry

The purpose is to validate visual direction and gameplay systems before
committing to final production assets.

## Asset Source Priority

Preferred order during technical validation:

1. Existing Godot-compatible tools and plugins
2. CC0 or permissively licensed community assets
3. Purchased asset packs with clear commercial terms
4. AI-generated concept or placeholder art
5. Handmade project-specific assets

Avoid using any asset that does not have a clear license.

## Community Asset Sources

Useful sources to investigate:

- Godot Asset Library
- Godot Asset Store
- itch.io game asset packs
- OpenGameArt
- Kenney assets
- GitHub repositories for Godot plugins and examples

Typical usage:

- Character placeholders
- Enemy placeholders
- UI icons
- Particles and effects
- Sound effects
- Low-poly props
- Tile textures
- Test environments

## AI-Assisted Art Usage

AI art is useful for:

- Character concept art
- Scene mood boards
- Color palette exploration
- Enemy concepts
- Prop concepts
- UI style references
- Single-frame placeholder sprites
- Effect texture experiments

AI art is less reliable for:

- Consistent animation frames
- Production-ready pixel walk cycles
- Multi-angle character consistency
- Clean transparent sprites without post-processing
- Style-matched asset packs

Recommended approach:

1. Use AI for concept and mood exploration.
2. Select one or two promising visual directions.
3. Convert or redraw key assets into clean pixel sprites.
4. Use Aseprite, LibreSprite, Krita, or similar tools for cleanup.
5. Track the source, tool, prompt, date, and usage in the asset register.

## HD-2D Asset Direction

The HD-2D look should be built from a combination of:

- 3D blockout geometry
- Pixel characters
- Pixel or low-resolution textures
- Orthographic angled camera
- Lighting
- Fog
- Glow
- Depth and atmospheric effects
- Careful scale and color control

The project does not need a complete HD-2D asset pack to begin. Early validation
can use simple 3D meshes and placeholder pixel sprites.

## Import Guidelines

Pixel sprites:

- Disable texture filtering where appropriate.
- Keep sprite scale consistent.
- Prefer clear silhouettes.
- Test Sprite3D and AnimatedSprite3D early.
- Verify that sprites remain crisp under the camera.

3D environment:

- Use simple meshes first.
- Keep collision simple.
- Avoid overly detailed assets during the first validation.
- Prefer modular props that can be reused.
- Use lighting and fog to create mood instead of relying only on geometry.

Effects:

- Start with Godot particles and simple textures.
- Keep combat effects readable.
- Avoid effects that hide character positions.

## License Rules

Preferred licenses:

- CC0 / Public Domain
- MIT / BSD / Apache for code plugins
- Clearly commercial-friendly paid licenses

Use with caution:

- CC-BY, because attribution is required
- CC-BY-SA, because share-alike requirements may affect distribution
- GPL or LGPL code plugins, because engine integration and distribution terms
  need review

Avoid:

- No license
- Unclear license
- Ripped commercial game assets
- Assets from unknown reposts

## Required Tracking

Every non-original asset should be recorded in:

- [asset_register.md](asset_register.md)

Required fields:

- Asset name
- Source URL
- Author
- License
- Commercial use status
- Modification permission
- Attribution requirement
- Local path
- Usage
- Notes

AI-generated assets should additionally record:

- Tool/model
- Prompt or prompt summary
- Generation date
- Whether the asset was edited manually

## Replacement Strategy

Prototype assets should be easy to replace.

Recommended rule:

- Game logic should not depend on a specific art file name.
- Scenes should use clear placeholder names.
- Asset files should be organized by role, not by temporary source.
- Final art replacement should not require rewriting gameplay scripts.
