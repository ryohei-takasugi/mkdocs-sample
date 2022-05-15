docker-compose down
docker rmi mkdocs-sample_app
docker-compose build app
docker-compose up -d