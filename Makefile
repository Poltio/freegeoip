.PHONY: build run rmi prod

build:
	docker build --build-arg env=stage . -t poltio/ip

prod:
	docker build --build-arg env=prod . -t poltio/ip

run:
	docker run -p 8080:8080 poltio/ip

rmi:
	docker rmi poltio/ip
