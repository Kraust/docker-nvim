all: container


container:
	sudo docker build -t "docker-nvim" .

container_clean: container_stop
	- docker rm docker-nvim

container_run: container_stop
	docker run -d --network=host --name "docker-nvim" "docker-nvim:latest"

container_stop:
	- docker stop docker-nvim

