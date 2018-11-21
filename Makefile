build:
	docker build -t mooxe/go ./Docker

rebuild:
	docker build --no-cache -t mooxe/go ./Docker

in:
	docker run --rm -ti \
		--name=go \
		-v $$(pwd):/root/go \
			mooxe/go /bin/bash

push:
	docker push mooxe/go
