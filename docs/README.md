# Yuri HD-2D RPG 技术验证文档

本文档集记录项目的早期技术验证、叙事方向、美术方向、资源管线和风险管理。

当前重点不是完整内容生产，而是验证一款日式百合向 HD-2D 动作 RPG 是否能在 Godot 4 Forward+ 中成立。

## 总体目标

构建一个小型可玩技术 demo，验证项目能否结合：

- 3D 场景中的 2D 像素角色
- HD-2D 风格的正交斜角表现
- 探索与物体/NPC 交互
- 实时动作 RPG 战斗
- 可扩展的 Godot 项目结构
- 基于社区素材、AI 辅助美术和授权追踪的实用资源管线

该 demo 应回答三个问题：

1. HD-2D 视觉路线在 Godot 4 Forward+ 中是否可行？
2. 探索和交互是否清晰、舒适？
3. 在 HD-2D 相机与精灵设置下，实时战斗是否仍然可读？

## 当前方向

- 引擎：Godot 4
- 渲染器：Forward+
- 语言：首个原型使用 GDScript
- 视角：正交斜角相机下的 3D 场景
- 角色：Sprite3D 或 AnimatedSprite3D
- 题材：日式百合向 RPG
- 世界：日式异世界
- 目标平台：PC 优先技术 demo

## 文档语言规范

从现在开始，`docs/` 下的正式项目文档默认使用中文。

如需英文版本，应单独创建明确命名的英文文档，例如 `README.en.md`，不要再维护 `docs/translations/` 这种平行翻译目录。

## 文档列表

- [technical_validation_plan.md](technical_validation_plan.md)：整体阶段计划和验证目标
- [narrative_art_direction.md](narrative_art_direction.md)：叙事前提、百合关系基调、日式异世界设定与美术方向
- [community_resources.md](community_resources.md)：社区素材、插件、教程和可复用轮子清单
- [asset_pipeline.md](asset_pipeline.md)：社区素材和 AI 辅助美术策略
- [asset_register.md](asset_register.md)：素材来源、授权和本地路径登记
- [combat_validation.md](combat_validation.md)：实时战斗原型范围
- [project_structure.md](project_structure.md)：建议的目录结构和系统职责
- [risk_register.md](risk_register.md)：已知技术和制作风险

## 首次验证的非目标

首次验证阶段应避免过早扩展为完整制作。以下内容暂不纳入范围：

- 完整故事剧本
- 完整角色写作
- 大型世界地图
- 背包系统
- 任务系统
- 存档/读档系统
- 最终角色美术
- 最终配乐
- Steam 上架级完善度

这些系统可以在视觉、交互和战斗方向被验证后再添加。
