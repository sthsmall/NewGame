# 资产候选清单

## 目的

本清单用于为当前 HD-2D 日式百合异世界原型挑选下一批资产。它不是正式资产登记表：未下载或未导入的候选不应写入 `asset_register.md`；已经导入的素材需要同步登记到正式资源表。

本轮按视觉和功能适配度筛选，暂不以许可证作为淘汰条件；真正下载、导入和发布前仍须补齐许可核对和来源登记。

## 当前缺口

现有原型已经具备：

- 一套 Kenney Retro Fantasy Kit 的少量 3D 环境件。
- 正交跟随相机、地面、碰撞和网格。
- 一个基于 Tiny Pixel Japan Female Character Pack 的临时 AnimatedSprite3D 主角。

优先补齐：

1. 可行走的日式女性像素角色，用于主角和同行角色。
2. 能一眼读出日式异世界的神社、森林、街道和仪式物件。
3. Phase 2 交互与 Phase 3 战斗所需的 UI、命中和提示占位资源。

暂不优先补齐：大型西式城堡、写实高面数建筑、完整 RPG Maker 地图，以及与当前正交 3D 场景比例不匹配的整套横版素材。

## 第一批推荐

### 1. Tiny Pixel Japan Female Character Pack

- 链接：https://lyniadesign.itch.io/tiny-pixel-japan-female-character-pack
- 内容：4 名日式女性像素角色、各 2 种配色；包含 idle、idle 2、walk 三种动画。
- 适合用途：立刻替换主角占位图；也可挑一名角色作为第二位核心少女或静态 NPC。
- 为什么优先：主题与项目的“日式百合向”定位直接一致，且存在行走动画，是当前最短路径的可见改进。
- 导入建议：保留原 PNG 像素尺寸、关闭过滤与 mipmap；切出单方向动画后通过 `AnimatedSprite3D` 或 `Sprite3D` 的图集帧使用。当前相机是斜角视角，先验证正面/侧面朝向是否足够可读，再决定是否需要 4 向或 8 向素材。
- 当前状态：已下载并导入到 `res://assets/characters/tiny_pixel_japan_female/`，主角先使用 `NPC_Hime.png` 的第一配色制作 idle/walk 原型。
- 结论：**已经进入原型验证，下一步观察运行时可读性。**

### 2. Shrine_Asset_Pack

- 链接：https://kyukei-dot.itch.io/shrine-asset-pack
- 内容：32×32 神社与森林主题 tileset、自动拼接地形、装饰件、独立透明 PNG 和使用手册。
- 适合用途：确定第一张可玩区域的视觉语汇，例如石阶、参道、灯笼、鸟居附近的植被与边界标记。
- 为什么优先：它把“神社 + 森林”这一项目最关键的日式异世界意象打包成可复用模块，能避免测试场景继续被西式石墙定义。
- 导入建议：当前项目并非 2D TileMap 游戏。先把独立 PNG 用作远景、遮挡物、告示、贴花或交互物视觉参考；若要直接成为 3D 场景核心，需制作或寻找对应 3D 模块，不建议把整张 tileset 直接铺到地面。
- 结论：**最适合定义场景气质的付费候选。**

### 3. The Japan Collection: Japanese City (Free Version)

- 链接：https://guttykreum.itch.io/free-japanese-city-game-assets
- 内容：379 个 32×32 静态像素 tile，包含店面、模块化街道、人行道、自动售货机、植物和电线杆。
- 适合用途：现代日本来源的异世界回忆、废弃车站周边、结界外侧街景，以及告示牌和背景构图参考。
- 为什么值得保留：项目世界并非纯古代日本；这包能给“从现代日常滑入异世界”的阈限感提供具体物件。
- 导入建议：不要用它取代 3D 主场景。优先挑选单个物件作为 `Sprite3D` 远景或 UI/剧情插图，测试像素角色与像素背景、3D 前景共存时的层次。
- 结论：**适合第二张验证场景，不是当前主场景的首要资源。**

### 4. Kenney Particle Pack

- 链接：https://kenney.nl/assets/particle-pack
- 内容：80 个 2D 粒子/VFX 资源。
- 适合用途：Phase 3/4 的攻击前摇、命中闪光、受击火花、短冲残影和小型灵性粒子。
- 为什么优先：战斗验证需要先证明判定和反馈可读，通用粒子比过早追求最终特效更有价值。
- 导入建议：在 Godot 中先做一个可替换的 `GPUParticles3D`/`Sprite3D` 特效节点，保证资源能按攻击、命中、受击三种事件替换；颜色应在材质或调制层统一到项目的暖橙、冷绿和少量洋红体系。
- 结论：**开始 Phase 3 前下载，Phase 4 前接入。**

### 5. Kenney UI Pack - Pixel Adventure

- 链接：https://kenney.nl/assets/ui-pack-pixel-adventure
- 内容：500 个像素 UI 资源。
- 适合用途：交互提示、HP 条、对话框、物品栏和调试按钮的临时视觉。
- 为什么优先：能让 Phase 2 和 Phase 3 的功能验证不被 Godot 默认控件样式干扰，同时仍可在最终 UI 设计时整体替换。
- 导入建议：只挑选边框、按钮底板、指示符和条形组件；避免让资源本身定义最终 UI 的叙事气质。文本仍使用项目选定的中日文字体。
- 结论：**功能 UI 的最佳临时包。**

## 备用候选

### BossNelNel：8-Direction Top-Down Character Sprites

- 链接：https://bossnelnel.itch.io/8-direction-top-down-character-sprites
- 内容：idle 1 帧、walk 8 帧；角色高度约 32–34 px。
- 用途：专门验证 8 向移动、动画切换和相机朝向。
- 取舍：动画技术适配度高，但主题较泛用，不能作为正式主角美术方向。

### Kenney Fantasy Town Kit

- 链接：https://kenney.nl/assets/fantasy-town-kit
- 内容：160 个低多边形 3D 城镇建筑与墙体模块。
- 用途：补足现有 Kenney 包缺少的建筑体量、围墙和可遮挡结构。
- 取舍：模型和当前 GLB 导入流程相容，但核心是中世纪城镇。只建议提取木结构、地面、围栏等中性模块，并通过颜色、灯笼、植被和布局向日式异世界靠拢。

### OpenGameArt：Kamaitachi

- 链接：https://opengameart.org/content/kamaitachi
- 内容：单张像素风镰鼬（日本妖怪）图像。
- 用途：作为第一个敌人概念和碰撞/受击测试的视觉参考。
- 取舍：主题非常对，但资源规模很小，缺少移动和攻击动画；适合原型占位或扩展为自制动画，不足以单独承担正式敌人。

## 建议下载顺序

1. `Tiny Pixel Japan Female Character Pack`：让玩家角色从静态占位进入可动状态。
2. `Shrine_Asset_Pack`：以神社小径为主题重做视觉验证场景的构图。
3. `Kenney UI Pack - Pixel Adventure`：进入 Phase 2 时用于交互提示和文字框。
4. `Kenney Particle Pack`：开始攻击、受击和闪避验证时再接入。
5. `The Japan Collection: Japanese City`：制作“边界车站/异世界入口”场景时使用。

## 下载后的标准流程

1. 在下载目录解压，不要直接把整包拖进项目。
2. 先查看文件结构、预览图、PNG 尺寸和动画帧布局。
3. 只复制首轮测试需要的文件进入 `res://assets/characters/`、`res://assets/environments/`、`res://assets/effects/` 或 `res://assets/ui/`。
4. 让 Godot 完成导入；像素图一般使用无过滤、无 mipmap、无有损压缩。
5. 在独立的 `visual_validation_*.tscn` 场景验证比例、遮挡、相机可读性和动画，再合并进 `main.tscn`。
6. 通过验证后，把实际导入的文件补到 `docs/asset_register.md`；届时再核对许可证、作者和署名要求。

## 本轮决定

下一步最合适的实现任务是：下载并导入 `Tiny Pixel Japan Female Character Pack`，用其中一名角色制作 4 向或 8 向的 `AnimatedSprite3D` 主角原型。它能同时推进日式风格、双主角叙事方向和玩家移动可读性。
