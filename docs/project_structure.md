# 项目结构

## 目标

保持第一版原型有组织，同时避免过度工程化。目录结构应便于替换资源、添加系统，并将玩法代码与一次性场景细节分离。

## 建议目录布局

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

该布局可以逐步引入。当前原型不需要立即填满每个目录。

## 场景职责

`main.tscn`

- 临时入口点
- 加载当前测试环境
- 包含世界环境、相机、光照和原型对象

`player.tscn`

- 玩家主体
- 玩家精灵或动画
- 碰撞
- 移动控制器
- 后续战斗控制器

`enemies/*.tscn`

- 敌人主体
- 敌人精灵
- 碰撞
- AI
- 生命值
- 命中框/受击框设置

`ui/*.tscn`

- 交互提示
- 对话或消息框
- HP UI
- 战斗指示器

`levels/*.tscn`

- 环境 blockout
- 未来可玩区域

## 脚本职责

玩家：

- 移动输入
- 交互输入
- 战斗输入
- 玩家状态切换

交互：

- 检测可交互对象
- 显示提示
- 触发交互
- 需要时锁定/解锁移动

战斗：

- 生命值
- 命中框/受击框
- 伤害路由
- 攻击时机
- 击退
- 敌人 AI
- 战斗状态

UI：

- 提示显示
- HP 显示
- 对话或消息显示
- 战斗反馈

状态：

- 全局原型标志
- 后续关系或故事变量
- Demo 完成状态

相机：

- 正交跟随
- 战斗相机调优
- 相机震动
- 可选边界限制

## 自动加载候选

未来可能的 autoload：

- `GameState`
- `InputRouter`
- `SceneLoader`
- `AudioManager`

不要立即添加所有 autoload。只有当某个系统确实需要全局访问时才添加。

## 命名指南

建议命名风格：

- 场景：`snake_case.tscn`
- 脚本：`snake_case.gd`
- 节点：`PascalCase`
- 导出变量：`snake_case`
- 输入动作：`snake_case`

示例：

- `player_controller.gd`
- `health_component.gd`
- `station_platform.tscn`
- `attack_light`
- `interact`

## 架构规则

原型代码可以简单，但避免把所有功能塞进一个脚本。

良好的早期分离：

- 移动脚本控制移动。
- 交互脚本控制交互。
- 战斗脚本控制战斗。
- UI 脚本控制 UI。

这样能保持原型灵活，又不会过多拖慢开发速度。
