# 显示帮助
.PHONY: help
help: Makefile ## 显示帮助
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)
# 初始化环境
.PHONY: init
init: export DOCKER_BUILDKIT=1
init:	## Creates the buildx instance
	$(info Initializing Builder...)
	docker buildx create --use --name=qemu
	docker buildx inspect --bootstrap
# 构建测试镜像
.PHONY: build.test
build.test: ## 构建测试镜像
	$(info Building test image...)
	image-build/build-image.sh gcslaoli/cool-admin-codespace:dev true "linux/amd64,linux/arm64"
