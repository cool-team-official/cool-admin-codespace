# 显示帮助
.PHONY: help
help: Makefile ## 显示帮助
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)
# 初始化环境
.PHONY: init
init: export DOCKER_BUILDKIT=1
init:	## Creates the buildx instance
	$(info Initializing Builder...)
	docker run --privileged --rm tonistiigi/binfmt --install all
	docker buildx create --use --name=qemu
	docker buildx inspect --bootstrap
# 构建开发测试镜像 
.PHONY: build.dev
build.dev: ## 构建开发测试镜像
	$(info Building test image...)
	image-build/build-image.sh gcslaoli/cool-admin-codespace:dev true "linux/amd64,linux/arm64"
	$(info add log with datetime to build.log)
	echo "build dev image at $(shell date)" >> build.log
# 构建生产镜像
.PHONY: build.latest
build.latest: ## 构建生产镜像
	$(info Building latest image...)
	image-build/build-image.sh gcslaoli/cool-admin-codespace:latest false "linux/amd64,linux/arm64"
	$(info add log with datetime to build.log)
	echo "build latest image at $(shell date)" >> build.log