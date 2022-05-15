docker-compose down
docker-compose rm -svf app
docker-compose build app
docker-compose up -d