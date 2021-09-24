build:
	docker build -t jm/genericwebappmicrofrontendangular .
dev:
	docker run --rm --name genericwebappmicrofrontendangular -it --user $(shell id -u):$(shell id -u) \
	-v ${PWD}:/app \
	-p 9000:9000 \
	--env-file .env jm/genericwebappmicrofrontendangular sh

