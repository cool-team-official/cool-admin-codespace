# CoolAdminCodespace

CoolAdmin 集成化开发环境

## 使用说明

点击本仓库右上方 `Code` 按钮, 选择 `Codespace`.

选择 `Create codespace on main` 创建一个新的 codespace.

## 集成命令

```bash
# 自动下载CoolAdmin前后端并安装npm依赖
npm run cool:init
# 启动mysql及redis
npm run db:start
# 关闭mysql及redis
npm run db:stop
# 重启mysql及redis
npm run db:restart
# 查看数据库日志
npm run db:logs
```
