runMySQL8:
	docker network create mysql8 || true
	cd ./mysql8-service && \
	docker-compose --env-file ../.env up -d

runMySQL57:
	docker network create mysql57 || true
	cd ./mysql57-service && \
	docker-compose --env-file ../.env up -d

runphpMyAdmin:
	cd ./phpmyadmin-service && \
	docker-compose --env-file ../.env up -d

runPSQL:
	docker network create psql || true
	cd ./psql-service && \
	docker-compose --env-file ../.env up -d

runMailHog:
	docker network create mailhog || true
	cd ./mailhog-service/ && \
    docker-compose --env-file ../.env up -d

runRedis:
	docker network create redis-net || true
	cd ./redis-service/ && \
    docker-compose --env-file ../.env up -d

runRabbitMQ:
	docker network create rabbitmq-net || true
	cd ./rabbitmq-service/ && \
    docker-compose --env-file ../.env up -d

runReverse:
	docker network create proxy || true
	cd ./reverse-proxy/ && \
	reverse-proxy/init-mkcert.sh

runReverseRemote:
	docker network create proxy || true
	cd ./reverse-proxy-remote/ && \
	reverse-proxy-remote/init-letsencrypt.sh