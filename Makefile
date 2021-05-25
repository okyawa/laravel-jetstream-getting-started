# Docker用コマンド

up:
	docker compose -f ./laradock-jetstream/docker-compose.yml up -d nginx mysql phpmyadmin redis workspace 
.PHONY: up

down:
	docker compose -f ./laradock-jetstream/docker-compose.yml down
.PHONY: down


# composer require時にメモリ不足となる場合に使うコマンド
#
# 実行例
# $ make composer_require name=laravel/jetstream
composer_require:
	php -d memory_limit=-1 /usr/local/bin/composer require ${name}
.PHONY: composer
