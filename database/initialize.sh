#!/bin/bash

SERVICE="database"
FILENAME="initial.sql"
CONTAINER_PATH="/root/$FILENAME"

echo "Initializing database"
docker-compose up -d "$SERVICE"

CONTAINER=$(docker ps --format "{{.Names}}" --filter status=running | grep "$SERVICE")

# Wait a bit for container to settle.
sleep 3
docker cp "$(dirname $0)/$FILENAME" "$CONTAINER:$CONTAINER_PATH"
docker-compose exec "$SERVICE" bash -c "psql postgres -U postgres < $CONTAINER_PATH"
docker-compose exec "$SERVICE" bash -c "rm $CONTAINER_PATH"

docker-compose stop "$SERVICE"
echo "Initialization done"
