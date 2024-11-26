build:
	docker compose build

up:
	docker compose up -d

down:
	docker compose down

attach:
	docker compose attach quake3

logs:
	docker compose logs -f
