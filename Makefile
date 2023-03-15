REGISTRY ?= gcslaoli
IMAGE_NAME ?= cool-admin-codespace
IMAGE_TAG ?= latest
IMAGE ?= $(REGISTRY)/$(IMAGE_NAME):$(IMAGE_TAG)
PLATFORM ?= "linux/amd64,linux/arm64"
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
	image-build/build-image.sh cnlidong/cool-admin-codespace:dev true "linux/amd64,linux/arm64"
	$(info add log with datetime to build.log)
	echo "$(shell date +'%Y-%m-%d %H:%M:%S') Build cnlidong/cool-admin-codespace:dev for $(PLATFORM) success!" >> build.log 
# 构建生产镜像
.PHONY: build.latest
build.latest: ## 构建生产镜像
	$(info Building latest image...)
	image-build/build-image.sh cnlidong/cool-admin-codespace:latest true "linux/amd64,linux/arm64"
	$(info add log with datetime to build.log)
	echo "$(shell date +'%Y-%m-%d %H:%M:%S') Build cnlidongi/cool-admin-codespace:latest for $(PLATFORM) success!" >> build.log