# Quash Quick Start Guide

Welcome to Quash! This quick start guide will help you set up the application using Docker on your local machine or a hosted VM instance. Follow these steps to get Quash up and running smoothly.

## Prerequisites

1. **Install Docker and Docker Compose**

   - Follow the official Docker installation documentation:
     - [Docker Installation Guide](https://docs.docker.com/get-docker/)
     - [Docker Compose Installation Guide](https://docs.docker.com/compose/install/)

2. **Download the Required Files**

   Make sure to have the following files in your working directory:
   - [`docker-compose.yml`](https://github.com/dhairya-quash/TEST-REPO/blob/main/docker-compose.yml)
   - [`setup.sh`](https://github.com/dhairya-quash/TEST-REPO/blob/main/Setup.sh)

## Considerations for Hosted VM Instance
1. 4GB CPU
2. Enabling imbound and outbound traffic on ports 8080 and 3000 in firewall rules and polices.

## Step-by-Step Guide

### 1. Running the Setup Script

To set up the application, follow these steps:

1. Ensure both `docker-compose.yml` and `setup.sh` are in your working directory.
2. Make the setup script executable:
   ```bash
   chmod +x setup.sh
   ```
3. Run the setup script:
   ```bash
   ./setup.sh
   ```
   or
   ```bash
   sudo bash ./setup.sh
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
- Verify that the `docker-compose.yml` and `setup.sh` files are present in your working directory.
- If you encounter any errors during the setup process, refer to the error messages and logs for troubleshooting.

## Conclusion

You have successfully set up Quash using Docker. If you have any questions or need further assistance, feel free to reach out to the Quash community or check the documentation.

Happy bug reporting!
