#these are variables definitions
APP_NAME=voting-backend
DOCKERHUB_USERNAME=nassro123
DOCKERHUB_REPO=${DOCKERHUB_USERNAME}/${APP_NAME}
IMAGE_TAG=latest
DOCKER_IMAGE=${DOCKERHUB_REPO}:${IMAGE_TAG}

.PHONY: all build docker-build push-docker-hub
all: build docker-build push-docker-hub

# Compile the Spring Boot App
build:
	@echo "Building Spring Boot voting-backend app"
	mvn clean package -DskipTests

# Build Docker image
docker-build:
	@echo "Building Docker image"
	docker build -t $(DOCKER_IMAGE) .

# Push Docker image to Docker Hub
push-docker-hub:
	@echo "Pushing Docker image to docker hub"
	docker push $(DOCKER_IMAGE)
