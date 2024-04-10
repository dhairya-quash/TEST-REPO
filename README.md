
# <p align="center"> Sherlock </p>
# <p align="center"> <img scr=https://github.com/dhairya-quash/TEST-REPO/assets/161799860/e3b6751c-dc07-442c-9708-eee2ba7ca788
 alt="Quash Logo" width=200/> </p>
# <p align="center"> On a mission to make Mobile Testing smooth and simple </p>

# Architecture Layers of the project
- Controller
- Service
- Repository
- Model
- DTO
- Utility

This guide will provide you steps to setup and configure the Backend for Sherlock.

## Installation

Sherlock is built using the following technologies:
- [Spring Boot](https://docs.spring.io/spring-boot/docs/current/reference/html/getting-started.html#getting-started.installing)
- [MongoDB](https://www.mongodb.com/docs/manual/installation/)
- Maven
- JWT Authentication

### Cloning the repo
```bash
# Move to your workspace
cd your-workspace

# Clone this project in your workspace
git clone https://github.com/Oscorp-HQ/QuashBackend.git

# Move to the project root directory
cd QuashBackend
```

### Pom.xml
Open the `pom.xml` file and reload maven from the side panel so that maven installs all the dependencies into your project.</br>

### Application.properties
Navigate to the resources directory and open the `application.properties` file. Here you will add your database connection strings, access tokens, secret keys for different integrations and services.</br>

### Adding required credentials and strings
Fill in the values of your MongoDB connection string for your database.

JWT configurations -
- JWT Secret
- JWT Expiration
- Token Signing key

If you have setup the frontend, add a Frontend URL

### Google OAuth
For **Google Oauth** add your Oauth2 **Client Id** and **Client Secret**.

### Mail Service
Setup a mail service and get required credentials including :
- Host, Username and Password 
- Port and Protocol
- Mail address from which mails will be sent from

### Jira integrations
Add your Jira account credentials including 
- Client Id
- Client secret.


### Google Sheets integration
Add your Google Service Account credentials including 
- Cleint Id
- Client Email
- Private Key Id
- Private Key. 

### Slack integration
Add your Slack account credentials including 
- Client Id
- Client Secret
- Access Token.

### Linear integration
Add your Linear account credentials including 
- Client Id
- Client Secret
- Access Token.

### Github Integration
Add your Github account credentials including 
- Client Id
- Client Secret.

### Clickup Integration
Add your Slack account credentials including 
- Client Id
- Client Secret.

**Set a Jasypt Password Encryption Key**

## Run Locally
Run the `QuashApplication` File

[![View API Docs](https://github.com/dhairya-quash/TEST-REPO/assets/161799860/4bf82545-9dc6-497b-857b-5148a57521e0)](http://localhost:8080/swagger-ui/index.html)

