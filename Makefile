# 开发常用命令集

.PHONY: init
init: ## 初始化项目
	@echo "初始化项目"
	@bash ./scripts/init.sh
	@echo "初始化完成"

# 启动mysql
.PHONY: mysql-up
mysql-up: ## 启动mysql
	@echo "启动mysql"
	@docker-compose -f ./docker-compose.yml up -d mysql

# 停止mysql
.PHONY: mysql-down
mysql-down: ## 停止mysql
	@echo "停止mysql"
	@docker-compose -f ./docker-compose.yml down mysql

# 备份mysql
.PHONY: mysql-backup
mysql-backup: ## 备份mysql
	@echo "备份mysql"
	@bash ./scripts/mysql-backup.sh

# 启动redis
.PHONY: redis-up
redis-up: ## 启动redis
	@echo "启动redis"
	@docker-compose -f ./docker-compose.yml up -d redis

# 停止redis
.PHONY: redis-down
redis-down: ## 停止redis
	@echo "停止redis"
	@docker-compose -f ./docker-compose.yml down redis
	