createMySQL8:
	cd ~/projects/docker-environment/mysql8-service && \
	docker-compose --env-file ~/projects/docker-environment/.env up -d

createMySQL57:
	cd ~/projects/docker-environment/mysql57-service && \
	docker-compose --env-file ~/projects/docker-environment/.env up -d