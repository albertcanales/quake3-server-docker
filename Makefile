# This Makefile just contains the most commonDocker Compose commands,
# but with my preferred arguments already in place. Feel free to use it!

default: up

build:
	docker compose build

up:
	docker compose up -d --remove-orphans

down:
	docker compose down

attach:
	docker compose attach quake3

shell:
	docker compose exec -ti quake3 sh

logs:
	docker compose logs -f
