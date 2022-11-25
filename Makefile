hub= docker-compose -f docker-compose-hub.yaml
build:
	$(hub) build --no-cache

build-front:
	$(hub) build --no-cache frontend

build-midd:
	$(hub) build --no-cache middleware

push-front:
	docker tag archipelago-build-dockerhub_frontend dataplayers/archipelago-frontend:0.6 && docker push dataplayers/archipelago-frontend:0.6

push-midd:
	docker tag archipelago-build-dockerhub_middleware dataplayers/archipelago-middleware:0.6 && docker push dataplayers/archipelago-middleware:0.6
