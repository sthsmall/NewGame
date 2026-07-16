# NewGame

NewGame 是一个 Godot 4 早期技术验证项目，目标是验证一款
**日式百合向 HD-2D 动作 RPG** 的核心方向。

故事设定暂定为日式异世界。当前阶段不是完整内容生产，而是验证：
像素角色、3D 场景、探索、交互和实时战斗，是否能在正交斜角镜头下
形成清晰、可扩展的原型基础。

English README: [README.en.md](README.en.md)

## 当前重点

当前原型主要验证：

- HD-2D 风格的视觉可读性
- 像素风角色站在 3D 场景中的表现
- 正交斜角相机和相机跟随
- 基础玩家移动
- 探索尺度的环境 blockout
- 社区素材导入流程和授权记录

已经完成的早期验证：

- Phase 0 项目基线
- Phase 1 第一轮视觉验证
- Kenney Retro Fantasy Kit 的 3D 场景测试切片
- 日式百合异世界方向的叙事与美术文档

## 项目方向

本项目的方向是：

- 日式百合向 RPG
- 日式异世界幻想设定
- 像素或类像素角色
- 3D 环境道具和场景 blockout
- 接近 HD-2D 的正交斜角表现
- PC 优先的技术 demo

第一阶段 demo 应该保持“有叙事意识”，但不要过早进入完整剧本和内容生产。

## 运行环境

- Godot 4.7.1 或更新的 Godot 4 版本
- Forward+ 渲染器

当前项目已用以下版本做过加载验证：

```text
Godot 4.7.1 stable
```

## 如何运行

1. 用 Godot 打开 `project.godot`
2. 按 `F5`
3. 使用 `WASD` 或方向键移动占位玩家

主场景是：

```text
res://scenes/main.tscn
```

## 目录结构

```text
assets/      外部素材和占位素材
data/        后续结构化玩法数据
docs/        设计、验证、素材和风险文档
scenes/      Godot 场景
scripts/     GDScript 原型代码
```

重要场景：

- `scenes/main.tscn`
- `scenes/player.tscn`
- `scenes/levels/visual_validation_kenney.tscn`

重要文档：

- `docs/technical_validation_plan.md`
- `docs/narrative_art_direction.md`
- `docs/community_resources.md`
- `docs/project_structure.md`
- `docs/asset_pipeline.md`
- `docs/asset_register.md`
- `docs/combat_validation.md`
- `docs/risk_register.md`

## 素材说明

当前项目使用：

- Godot 默认图标作为早期临时占位素材
- 手写 SVG 像素风玩家占位图
- 少量 Kenney Retro Fantasy Kit 2.0 环境模型

外部素材记录在：

```text
docs/asset_register.md
```

Kenney Retro Fantasy Kit 2.0 使用 CC0 授权。本地许可证副本位于：

```text
assets/environments/kenney_retro_fantasy/License.txt
```

## 开发说明

本仓库在第一轮技术验证阶段刻意避免过早加入大型 RPG 系统。

以下内容会推迟到核心方向验证之后：

- 完整剧情脚本
- 背包系统
- 任务系统
- 存档/读档
- 大地图
- 最终角色美术
- 最终音乐

下一阶段主要验证目标是探索与交互。
