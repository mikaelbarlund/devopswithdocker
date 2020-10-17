docker-compose up -d
sleep 2
curl http://localhost:8000
docker-compose down
