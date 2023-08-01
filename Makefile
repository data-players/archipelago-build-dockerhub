hub= docker-compose -f docker-compose-hub.yaml
build:
	$(hub) build --no-cache

build-front:
	$(hub) build --no-cache frontend

build-midd:
	$(hub) build --no-cache middleware

#Actual version : 0.11
push-front:
	docker tag build-dockerhub_frontend dataplayers/archipelago-frontend:* && docker push dataplayers/archipelago-frontend:0*

#Actual version : 0.10
push-midd:
	docker tag archipelago-build-dockerhub_middleware dataplayers/archipelago-middleware:* && docker push dataplayers/archipelago-middleware:*
