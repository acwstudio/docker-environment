## Backup of databases with docker

## Copy files from one server to another
`$ scp -3 user@iphost1:/home/sunday/projects/finnice/fin-app-1/public/site/images/slides/* \ 
user@iphost2:/home/sunday/projects/finnice/app-fin/public/site/images/slides`

## Backup
docker exec CONTAINER /usr/bin/mysqldump -u root --password=root DATABASE > backup.sql

## Restore
cat backup.sql | docker exec -i CONTAINER /usr/bin/mysql -uroot -proot DATABASE