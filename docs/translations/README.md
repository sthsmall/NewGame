# Yuri HD-2D RPG 技术验证

本文档集定义了项目的首个技术验证阶段。
当前的重点不是故事制作，而是验证视觉风格、探索交互和实时战斗方向在 Godot 4 Forward+ 中的可行性。

## 总体目标

构建一个可玩的小型技术演示，验证一款日式 Yuri 像素 RPG 能否结合以下要素：

- HD-2D 呈现：3D场景中的2D像素角色
- 探索及物体/NPC交互
- 实时动作RPG战斗
- 可扩展的Godot项目结构
- 实用的资源管线，使用社区资源、AI辅助美术及可追踪的许可

该演示应回答三个问题：

1. HD-2D 视觉路线在 Godot 4 Forward+ 中是否可行？
2. 探索和交互是否清晰且舒适？
3. 在 HD-2D 相机和精灵设置下，实时战斗能否保持清晰？

## 当前方向

- 引擎：Godot 4
- 渲染器：Forward+
- 语言：首个原型使用 GDScript
- 视角：带正交倾斜相机的3D场景
- 角色：Sprite3D 或 AnimatedSprite3D
- 目标：面向PC的技术演示

## 文档

- [technical_validation_plan.md](technical_validation_plan.md)：整体阶段计划和验证目标
- [asset_pipeline.md](asset_pipeline.md)：社区资源和AI美术策略
- [combat_validation.md](combat_validation.md)：实时战斗原型范围
- [project_structure.md](project_structure.md)：建议的文件夹和系统职责
- [risk_register.md](risk_register.md)：已知的技术和生产风险
- [asset_register.md](asset_register.md)：许可和来源追踪模板

## 首次验证的非目标

首次验证阶段应避免过早扩展至完整制作。以下内容有意暂不纳入范围：

- 完整故事剧本
- 完整的角色写作
- 大型世界地图
- 背包系统
- 任务系统
- 存档/读档系统
- 最终角色美术
- 最终配乐
- 可上架Steam的完善度

这些系统可以在视觉、交互和战斗方向被验证后再添加。
