# 项目结构

## 目标

保持第一个原型的组织性，同时避免过度工程化。结构应使替换资源、添加系统以及将游戏代码与一次性场景细节分离变得容易。

## 建议的文件夹布局

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

此布局可以逐步引入。当前原型不需要立即拥有每个文件夹。

## 场景职责

`main.tscn`

- 临时入口点
- 加载当前测试环境
- 包含世界环境、相机、光照和原型物体

`player.tscn`

- 玩家主体
- 玩家精灵或动画
- 碰撞
- 移动控制器
- 后续的战斗控制器

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

- 环境布局和未来的可玩区域

## 脚本职责

玩家：

- 移动输入
- 交互输入
- 战斗输入
- 玩家状态转换

交互：

- 检测可交互物体
- 显示提示
- 触发交互
- 需要时锁定/解锁移动

战斗：

- 生命值
- 命中框/受击框
- 伤害路由
- 攻击时机
- 击退
- 敌人AI
- 战斗状态

UI：

- 提示显示
- HP显示
- 对话或消息显示
- 战斗反馈

状态：

- 全局原型标志
- 后续的关系或故事变量
- 演示完成状态

相机：

- 正交跟随
- 战斗相机调优
- 相机震动
- 可选的边界限制

## 自动加载候选

可能的未来自动加载：

- `GameState`
- `InputRouter`
- `SceneLoader`
- `AudioManager`

不要立即添加所有这些。仅当某个系统需要全局访问时才添加自动加载。

## 命名指南

建议的命名风格：

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

原型代码可以简单，但避免将所有功能塞进一个脚本中。

良好的早期分离：

- 移动脚本控制移动。
- 交互脚本控制交互。
- 战斗脚本控制战斗。
- UI脚本控制UI。

这保持了原型的灵活性，同时不会过多拖慢开发速度。
