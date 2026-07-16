# 社区资源与可复用工具清单

## 目的

本文档记录项目可参考、可导入或可评估的社区资源来源，包括素材网站、Godot 插件、示例项目和教程资料。

原则：

- 优先选择授权清晰、可商业使用的资源。
- 原型阶段可以使用占位资源，但必须记录来源和许可。
- 不要为了省时间过早引入大型框架。
- 所有外部资源进入项目前，都要登记到 `asset_register.md`。

## 当前优先级

当前项目处于技术验证阶段，资源选择应服务于：

1. HD-2D 视觉可读性
2. 像素角色与 3D 场景融合
3. 探索交互验证
4. 后续实时战斗验证
5. 授权和替换流程可控

## 综合素材网站

### itch.io Game Assets

链接：https://itch.io/game-assets

用途：

- 像素角色
- UI 素材
- 音效
- 环境包
- 小型付费或免费素材包

优点：

- 风格多样，像素 RPG 资源很多。
- 容易找到风格统一的小包。

风险：

- 授权差异很大。
- 有些素材只允许个人使用或禁止商业使用。
- 需要逐个资源检查许可。

适合当前项目：高。

### OpenGameArt

链接：https://opengameart.org/

用途：

- 像素角色
- 特效
- UI
- 音效
- 音乐

优点：

- 免费资源多。
- 有不少 CC0 资源。

风险：

- 授权类型混杂。
- 风格统一性较弱。
- 部分资源质量和来源需要仔细筛选。

适合当前项目：中到高。

### Kenney

链接：https://kenney.nl/assets

用途：

- 低多边形 3D 环境
- UI
- 输入图标
- 音效
- 粒子和占位素材

优点：

- 授权通常非常清晰。
- 很多资源为 CC0。
- 风格统一，适合快速原型。

当前已使用：

- Kenney Retro Fantasy Kit 2.0
- 本地路径：`res://assets/environments/kenney_retro_fantasy/`

适合当前项目：高。

### Quaternius

链接：https://quaternius.com/

用途：

- 低多边形 3D 角色
- 怪物
- 道具
- 场景组件

优点：

- 3D 模型包丰富。
- 很适合快速验证敌人和场景。

风险：

- 需要逐个确认具体资源许可。
- 风格可能偏通用低多边形，需要与日式异世界方向筛选。

适合当前项目：中到高。

### KayKit

链接：https://kaylousberg.itch.io/

用途：

- 低多边形幻想场景
- 地牢、村庄、角色和道具
- 原型敌人或 NPC

优点：

- 风格完整。
- 很适合 3D 场景验证。

风险：

- 部分资源为付费包。
- 需要逐个检查授权条款。

适合当前项目：中到高。

## 音效与音乐

### Freesound

链接：https://freesound.org/

用途：

- UI 音效
- 脚步声
- 环境音
- 攻击和受击音效

风险：

- 授权差异大。
- CC-BY 需要署名。
- 非 CC0 资源要谨慎使用。

适合当前项目：中。

### Pixabay Sound Effects

链接：https://pixabay.com/sound-effects/

用途：

- 临时 UI 音效
- 环境音
- 原型战斗音效

风险：

- 仍需查看具体授权说明。
- 风格筛选需要时间。

适合当前项目：中。

## 像素、美术参考与字体

### Lospec

链接：https://lospec.com/

用途：

- 像素调色板
- 像素美术参考
- 色彩方向探索

优点：

- 很适合确定像素角色和 UI 的色彩语言。
- 对日式百合异世界的氛围设计很有帮助。

适合当前项目：高。

### Game-icons.net

链接：https://game-icons.net/

用途：

- 技能图标
- 道具图标
- UI 占位图标

风险：

- 常见授权为 CC-BY，需要署名。
- 进入项目之前必须登记。

适合当前项目：中。

### Google Fonts

链接：https://fonts.google.com/

用途：

- UI 字体
- 临时标题字体
- 多语言字体评估

风险：

- 需要确认字体授权和游戏内嵌使用方式。
- 中文/日文字体体积可能较大。

适合当前项目：中。

## Godot 插件与可复用轮子

### Godot Asset Library

链接：https://godotengine.org/asset-library/asset

用途：

- Godot 插件
- 示例项目
- 编辑器工具
- 常用系统原型

原则：

- 优先使用轻量插件。
- 不要过早引入完整 RPG 框架。
- 插件进入项目之前要看许可证和维护状态。

适合当前项目：高。

### Dialogic

链接：https://github.com/dialogic-godot/dialogic

用途：

- 对话系统
- 角色台词
- 分支文本
- 简单事件对话

适合阶段：

- Phase 2 探索与交互验证之后评估。

备注：

- 如果只是一个简单提示框，可以先自制轻量系统。
- 如果对话量开始增加，再考虑引入。

### Phantom Camera

链接：https://github.com/ramokz/phantom-camera

用途：

- 更复杂的相机跟随
- 镜头状态切换
- 战斗镜头
- 过场镜头

适合阶段：

- Phase 3 或 Phase 4 需要更强镜头系统时评估。

备注：

- 当前项目的自制相机跟随脚本已足够 Phase 1 使用。

### Godot State Charts

链接：https://github.com/derkork/godot-statecharts

用途：

- 玩家状态
- 敌人 AI
- 战斗状态
- 交互状态

适合阶段：

- Phase 3 战斗核心验证时评估。

备注：

- 如果敌人 AI 只有待机、追踪、攻击三个状态，可以先用简单脚本实现。

### Beehave

链接：https://github.com/bitbrain/beehave

用途：

- 行为树
- 敌人 AI
- NPC 行为

适合阶段：

- 更复杂敌人或 NPC 行为出现后再评估。

备注：

- 第一版战斗敌人不建议过早使用行为树。

### GUT

链接：https://github.com/bitwes/Gut

用途：

- Godot 单元测试
- 组件逻辑测试
- 战斗数据和状态测试

适合阶段：

- 战斗组件和交互组件稳定后评估。

## 示例、教程和代码参考

### GDQuest

链接：https://www.gdquest.com/

用途：

- Godot 项目结构参考
- GDScript 实践
- UI、状态机、动作游戏教程

适合当前项目：中到高。

### KidsCanCode Godot Recipes

链接：https://kidscancode.org/godot_recipes/4.x/

用途：

- Godot 4 小功能示例
- 相机、移动、AI、交互等基础实现参考

适合当前项目：中。

### GitHub Godot Topic

链接：https://github.com/topics/godot

用途：

- 查找 Godot 示例项目
- 查找插件源码
- 查找 RPG、action RPG、dialogue、combat 等参考实现

风险：

- 许可证差异大。
- 代码质量和维护状态差异大。

适合当前项目：中。

## 不建议优先使用的资源

暂时不建议：

- 完整 RPG 框架
- 大型背包、任务、存档插件
- 授权不清的素材包
- 商业游戏拆包素材
- GPL/LGPL 代码插件，除非明确理解分发影响
- 会强行规定项目结构的大型模板

## 当前推荐行动

近期可以继续做：

1. 从 Kenney、KayKit 或 Quaternius 选择少量 3D 道具做视觉测试。
2. 从 itch.io 或 OpenGameArt 找一个许可证清楚的像素角色行走占位包。
3. 从 Kenney 或 Freesound 找少量 UI/脚步/确认音效。
4. Phase 2 开始前，评估是否需要 Dialogic，还是先自制轻量对话框。

所有导入项目的外部资源，都必须同步登记到 `asset_register.md`。
