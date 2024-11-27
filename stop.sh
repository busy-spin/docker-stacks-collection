BASE_DIR=$(dirname $0)
SERVICE=$1

echo "Working dir is >>> $BASE_DIR"
echo "Service is >>> $SERVICE"

docker-compose -f $BASE_DIR/${SERVICE}/docker-compose.yml down

docker ps