-include .env

create:
	docker-compose run --rm react npm install create-react-app
	docker-compose run --rm react npx create-react-app ${COMPOSE_PROJECT_NAME} --template typescript

create-next:
	docker-compose run --rm react npm install create-next-app
	docker-compose run --rm react npx create-next-app ${COMPOSE_PROJECT_NAME} --template typescript

up:
	docker-compose up -d

build:
	docker-compose build --no-cache --force-rm
	@make up

down:
	docker-compose down

restart:
	@make down
	@make up

# docker内で利用するコマンド
## よく使うpackageをインストール
template:
	cd ${COMPOSE_PROJECT_NAME} \
	&& npm install @types/react-redux @types/redux-logger --save-dev
