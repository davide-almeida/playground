CONTAINER_NAME ?= sinatra

run:
	@docker compose down
	@docker compose up

bash:
	@docker compose exec $(CONTAINER_NAME) bash

logs:
	@docker compose logs -f $(CONTAINER_NAME)
