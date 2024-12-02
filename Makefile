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
