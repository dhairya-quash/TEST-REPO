
# Sherlock Backend Setup

This guide will provide you steps to setup and configure the Backend for Sherlock.
## Installation


The backend is in spring boot, so install Spring Boot on your machine. You can refer this official [Spring Boot Guide](https://docs.spring.io/spring-boot/docs/current/reference/html/getting-started.html#getting-started.installing) for installation.

We have used MongoDB as our Database, you can install it by referring this official [MongoDB Installation Guide](https://www.mongodb.com/docs/manual/installation/).

Also this project uses Maven as it's build tool so make sure you have maven installed and configured correctly.

### Cloning the repo
Clone this repository and go to the directory it is saved into.

### Pom.xml
Open the `pom.xml` file and reload maven from the side panel so that maven installs all the dependencies to your repository.

### application.properties
Navigate to the resources directory and open the `application.properties` file. Here you will add your database connection strings, access tokens, secret keys for different integrations and services.

### Adding required credentials and strings
Fill in the values of your MongoDB connection string for your database.

JWT configurations -
- [ ]  JWT Secret
- [ ]  JWT Expiration
- [ ]  Token Signing key

If you have setup the frontend, add a Frontend URL

### Google OAuth
For **Google Oauth** add your Oauth2 Client Id and Client Secret.

### Mail Service
Setup a mail service and get required credentials including :
- [ ]  Host, Username and Password 
- [ ]  Port and Protocol
- [ ]  Mail address from which mails will be sent from

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
