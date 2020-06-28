start:
	@docker-compose -f .devcontainer/docker-compose.yml up -d

restart:
	@docker-compose -f .devcontainer/docker-compose.yml stop
	@docker-compose -f .devcontainer/docker-compose.yml start

tty:
	@docker exec -e "TERM=xterm-256color" -w /workspace/development -it devcontainer_frappe_1 bash

clean:
	@docker-compose -f .devcontainer/docker-compose.yml down
	@docker volume prune -f
	@docker container prune -f
	@docker-compose -f .devcontainer/docker-compose.yml up -d
