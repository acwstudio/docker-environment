runMySQL8:
	cd ~/projects/docker-environment/mysql8-service && \
	docker-compose --env-file ~/projects/docker-environment/.env up -d

runMySQL57:
	cd ~/projects/docker-environment/mysql57-service && \
	docker-compose --env-file ~/projects/docker-environment/.env up -d

runMailHog:
	cd ~/projects/docker-environment/mailhog-service/ && \
    docker-compose --env-file ~/projects/docker-environment/.env up -d

runReverse:
	cd ~/projects/docker-environment/reverse-proxy/ && \
	~/projects/docker-environment/reverse-proxy/init-mkcert.sh