DIR=$(CURDIR)

build:
	docker compose -p go build

up:
	docker compose -p go up -d --remove-orphans

stop:
	docker compose -p go stop

reload: stop up

down:
	docker compose -p go down

install:
	cp conf.json.example conf.json

start:
	sh ./scripts/start.sh

stop:
	sh ./scripts/stop.sh

test:
	go test cmd
	go test auth
	go test database
	go test models
