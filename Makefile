up:
	docker compose -f ./laradock-jetstream/docker-compose.yml up -d nginx mysql phpmyadmin redis workspace 
down:
	docker compose -f ./laradock-jetstream/docker-compose.yml down
