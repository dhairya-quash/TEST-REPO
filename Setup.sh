#!/bin/bash

COMPOSE_FILE="docker-compose.yml"
BACKEND_ENV="application.properties"
FRONTEND_ENV=".env.local"

if [[ ! -f "$COMPOSE_FILE" ]]; then
  echo "Error: $COMPOSE_FILE not found!"
  exit 1
fi

docker-compose up --no-start
echo "Created the containers max-frontend max-backend"

echo "Are you running this script on a hosted VM instance? (yes/no)"
read -r IS_HOSTED_VM

if [[ "$IS_HOSTED_VM" == "yes" ]]; then
    EXTERNAL_IP=$(curl -s https://ipinfo.io/ip)
    if [[ -z "$EXTERNAL_IP" ]]; then
        echo "Failed to retrieve external IP"
        exit 1
    fi
elif [[ "$IS_HOSTED_VM" == "no" ]]; then
    EXTERNAL_IP="localhost"
else
    echo "Invalid input. Please enter 'yes' or 'no'."
    exit 1
fi

docker cp max-backend:/app/backend/$BACKEND_ENV ./
sed -i "s|spring.frontend.url={FRONTEND_URL}|spring.frontend.url=http://$EXTERNAL_IP:3000/|g" $BACKEND_ENV
sed -i "s|spring.url={BACKEND_URL}|spring.url=http://$EXTERNAL_IP:8080|g" $BACKEND_ENV

docker cp max-frontend:/app/frontend/$FRONTEND_ENV ./
sed -i "s|NEXTAUTH_URL=http://localhost:3000/|NEXTAUTH_URL=http://$EXTERNAL_IP:3000/|g" $FRONTEND_ENV
sed -i "s|NEXT_PUBLIC_REFRESH_BASE_URL=http://localhost:8080|NEXT_PUBLIC_REFRESH_BASE_URL=http://$EXTERNAL_IP:8080|g" $FRONTEND_ENV
sed -i "s|NEXT_PUBLIC_BACKEND_URL=http://localhost:8080|NEXT_PUBLIC_BACKEND_URL=http://$EXTERNAL_IP:8080|g" $FRONTEND_ENV

echo "Please add your credentials to $BACKEND_ENV and $FRONTEND_ENV."
echo "Opening $BACKEND_ENV in nano editor..."
sleep 2
nano $BACKEND_ENV

echo "Opening $FRONTEND_ENV in nano editor..."
sleep 2
nano $FRONTEND_ENV

docker cp ./$BACKEND_ENV max-backend:/app/backend/$BACKEND_ENV
docker cp ./$FRONTEND_ENV max-frontend:/app/frontend/$FRONTEND_ENV

docker start max-frontend max-backend

echo "Containers started successfully."
