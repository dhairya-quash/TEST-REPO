# Quash Quick Start Guide

Welcome to Quash! This quick start guide will help you set up the application using Docker on your local machine or a hosted VM instance. Follow these steps to get Quash up and running smoothly.

## Prerequisites

1. **Install Docker and Docker Compose**

   - Follow the official Docker installation documentation:
     - [Docker Installation Guide](https://docs.docker.com/get-docker/)
     - [Docker Compose Installation Guide](https://docs.docker.com/compose/install/)

   - Alternatively, use the commands below to install Docker and Docker Compose:

     **For Ubuntu:**
     ```bash
     sudo apt-get update
     sudo apt-get install -y docker.io
     sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
     sudo chmod +x /usr/local/bin/docker-compose
     ```

     **For CentOS:**
     ```bash
     sudo yum update -y
     sudo yum install -y docker
     sudo systemctl start docker
     sudo systemctl enable docker
     sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
     sudo chmod +x /usr/local/bin/docker-compose
     ```

2. **Download the Required Files**

   Make sure to have the following files in your working directory:
   - `docker-compose.yml`
   - `Setup.sh`

## Step-by-Step Guide

### 1. Docker Compose File

Create a `docker-compose.yml` file with the following content:

```yaml
version: '3.8'

services:
  frontend:
    image: quashbugs/quash-max-frontend:latest
    container_name: max-frontend
    ports:
      - "3000:3000"
    networks:
      - quash-network

  backend:
    image: quashbugs/quash-max-backend:latest
    container_name: max-backend
    ports:
      - "8080:8080"
    environment:
      - SPRING_CONFIG_LOCATION=classpath:/application.properties,optional:file:/app/backend/application.properties
    networks:
      - quash-network

networks:
  quash-network:
    driver: bridge
```

### 2. Setup Script

Create a `Setup.sh` file with the following content:

```bash
#!/bin/bash

COMPOSE_FILE="docker-compose.yml"
BACKEND_ENV="application.properties"
FRONTEND_ENV=".env.local"

if [[ ! -f "$COMPOSE_FILE" ]]; then
  echo "Error: $COMPOSE_FILE not found!"
  exit 1
fi

docker-compose up --no-start
echo "Created the containers max-frontend and max-backend"

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
```

### 3. Running the Setup Script

To set up the application, follow these steps:

1. Ensure both `docker-compose.yml` and `Setup.sh` are in your working directory.
2. Make the setup script executable:
   ```bash
   chmod +x Setup.sh
   ```
3. Run the setup script:
   ```bash
   ./Setup.sh
   ```

### 4. Follow the Prompts

The setup script will guide you through the following steps:

1. It will create the containers but not start them yet.
2. It will ask if you are running the script on a hosted VM instance or locally.
3. Based on your input, it will set the appropriate IP addresses for the frontend and backend URLs.
4. It will copy the environment configuration files from the containers to your local directory.
5. It will prompt you to edit these configuration files to add your credentials and secrets.
6. Finally, it will copy the updated configuration files back to the containers and start them.

### 5. Verify the Setup

Once the script completes, you should have the following containers running:

- `max-frontend` accessible at `http://<YOUR_IP>:3000`
- `max-backend` accessible at `http://<YOUR_IP>:8080`

## Troubleshooting

- Ensure Docker and Docker Compose are installed and running.
- Verify that the `docker-compose.yml` and `Setup.sh` files are present in your working directory.
- If you encounter any errors during the setup process, refer to the error messages and logs for troubleshooting.

## Conclusion

You have successfully set up Quash using Docker. If you have any questions or need further assistance, feel free to reach out to the Quash community or check the documentation.

Happy bug reporting!

---

This comprehensive guide should help users set up the Quash application quickly and efficiently. Make sure to include any additional details or steps specific to your project as needed.
