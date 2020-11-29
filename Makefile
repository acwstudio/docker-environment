runAll: runReverse runMailHog runMySQL8 runMySQL57

runMySQL8:
	cd ~/projects/docker-services/mysql8-service && \
	docker-compose --env-file ~/projects/docker-services/.env up -d

runMySQL57:
	cd ~/projects/docker-services/mysql57-service && \
	docker-compose --env-file ~/projects/docker-services/.env up -d

runMailHog:
	cd ~/projects/docker-services/mailhog-service/ && \
    docker-compose --env-file ~/projects/docker-services/.env up -d

runReverse:
	cd ~/projects/docker-services/reverse-proxy/ && \
	~/projects/docker-services/reverse-proxy/init-mkcert.sh