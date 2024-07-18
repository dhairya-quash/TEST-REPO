# Quash Quick Start Guide

Welcome to Quash! This guide will walk you through the process of setting up Quash using Docker, whether you're working on your local machine or a hosted VM instance. We've designed this guide to be comprehensive and easy to follow. Let's get started!

## Quick Links
- Host a VM Instance
  - [Google Cloud Platform](#gcp)
  - [Amazon Web Series](#amazon-web-services)
  - [Azure](#azure)
- [Running Locally](#running-locally)
- [Prerequisites](#prerequisites)
- [Step-By-Step Guide](#step-by-step-guide)
- [Troubleshooting](#troubleshooting)


## Considerations for Hosted VM Instances

If you plan to run Quash on a virtual machine (VM) hosted in the cloud, here are a few things to consider:

- Choose a VM instance with at least 4GB of memory.
- Configure your firewall rules to allow traffic on ports 8080 and 3000.
-----

You can find detailed instructions on how to create and configure VM instances for different cloud providers here:

### Google Cloud Platform (GCP): [Creating a VM instance](https://cloud.google.com/compute/docs/instances/create-start-instance)

1. **Create a VM instance**: Follow the [GCP guide](https://cloud.google.com/compute/docs/instances/create-start-instance) to create a VM. Choose a machine type with at least 4GB of memory, such as `n1-standard-1`.

2. **Configure firewall rules**: Allow traffic on ports 8080 and 3000 by setting up appropriate firewall rules.

3. **SSH into your VM**: Access your VM through SSH and follow the [setup](#step-by-step-guide) steps provided below.
----

### Amazon Web Services (AWS): [Launching an EC2 instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EC2_GetStarted.html)

1. **Launch an EC2 instance**: Use the [AWS guide](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EC2_GetStarted.html) to launch an EC2 instance. Select an instance type like `t2.medium` which offers 4GB of memory.

2. **Configure security groups**: Ensure your security groups allow inbound traffic on ports 8080 and 3000.

3. **Connect to your EC2 instance**: SSH into your EC2 instance and proceed with the [setup](#step-by-step-guide) steps.
----

### Microsoft Azure: [Creating a Virtual Machine](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/quick-create-portal)

1. **Create a Virtual Machine**: Refer to the [Azure guide](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/quick-create-portal) to create a VM. Opt for a machine size such as `Standard B2ms` with 4GB of memory.

2. **Set up NSGs**: Configure network security groups to permit traffic on ports 8080 and 3000.

3. **Access your VM**: SSH into your Azure VM and follow the [setup](#step-by-step-guide) steps.
----

## Running Locally

To run Quash locally, you only need to meet the prerequisites and follow the setup steps below.

## Prerequisites

Before we dive into the setup, let's ensure you have everything you need.

### Docker and Docker Compose

Docker allows you to run applications in isolated containers, while Docker Compose helps you manage multi-container applications. Follow these links to install Docker and Docker Compose on your system:

- [Docker Installation Guide](https://docs.docker.com/get-docker/)
- [Docker Compose Installation Guide](https://docs.docker.com/compose/install/)

### Required Files

Make sure you have the following files downloaded and saved in a folder on your computer:

- `docker-compose.yml`
- `setup.sh`

These files contain the instructions and configurations needed to set up Quash.

## Step-by-Step Guide

Now that you have everything ready, let's proceed with the setup.

### Running the Setup Script

1. **Navigate to your working directory**: Open your terminal (or command prompt) and navigate to the folder where you saved the `docker-compose.yml` and `setup.sh` files.

2. **Make the setup script executable**: In the terminal, type the following command to allow the setup script to run:

   ```bash
   chmod +x setup.sh
   ```

3. **Run the setup script**: Start the setup process by running the script with one of the following commands:

   ```bash
   ./setup.sh
   ```

   or if you need administrative permissions:

   ```bash
   sudo bash ./setup.sh
   ```

### Follow the Prompts

As the setup script runs, it will guide you through several steps:

1. **Create containers**: The script will prepare the Docker containers for Quash but will not start them yet.

2. **Specify your environment**: You will be asked if you are setting up Quash on a hosted VM instance or locally on your computer. Based on your response, the script will configure the IP addresses for the frontend and backend.

3. **Configure environment files**: The script will copy environment configuration files from the containers to your local directory. You will need to open these files and add your credentials and secrets. This information is crucial for the proper functioning of Quash.

4. **Finalize setup**: After you have edited the configuration files, the script will copy them back to the containers and start them.

### Verify the Setup

Once the script has completed its tasks, you should see two running containers:

- **max-frontend**: You can access this at `http://<YOUR_IP>:3000`
- **max-backend**: You can access this at `http://<YOUR_IP>:8080/swagger-ui/index.html`

Replace `<YOUR_IP>` with the actual IP address of your machine or VM instance.

## Troubleshooting

If you run into any issues during the setup process, here are a few tips:

- **Check Docker and Docker Compose**: Ensure both Docker and Docker Compose are installed and running on your system.
- **Verify file locations**: Make sure the `docker-compose.yml` and `setup.sh` files are in the correct directory.
- **Read error messages**: Pay close attention to any error messages and logs provided during the setup. These can give you clues about what might be going wrong.

## Conclusion

Congratulations! You have successfully set up Quash using Docker. If you have any questions or need further assistance, don't hesitate to reach out to the Quash community or consult the documentation.

Happy bug reporting!
