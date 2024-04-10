
# <p align="center"> Sherlock - DevTool for Automated Bug Reporting & Resolution </p>
# <div align="center"> <img src="https://github.com/dhairya-quash/TEST-REPO/assets/161799860/58b129ab-5c12-48af-8b91-66c0999cae28" alt="Logo" width="100"> </div>
<p align="center"> On a mission to make Mobile Testing smooth and simple </p>

# Architecture Layers of the project
- Controller
- Service
- Repository
- Model
- DTO
- Utility

<div align="center"><img src="https://github.com/dhairya-quash/TEST-REPO/assets/161799860/a54267a7-3c17-4a36-ade4-306a916cb0e4" alt="Architecture Image" width="900"></div>
<br>
<br>
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
> Open the `pom.xml` file and reload maven from the side panel so that maven installs all the dependencies into your project.</br>

## Application.properties
> Navigate to the resources directory and open the `application.properties` file. Here you will add your database connection strings, access tokens, secret    keys for different integrations and services.</br>

### Adding required credentials and strings
Fill in the values of your MongoDB connection string for your database.

JWT configurations -
```bash
jwt.secret= Your_Secret
jwt.expirationMs= Expiration_time
token.signing.key= Your_JWT_Singing_key
```

If you have setup the frontend, add a Frontend URL

### Google OAuth
```bash
spring.security.oauth2.client.registration.google.client-id= Google_Client_Id
spring.security.oauth2.client.registration.google.client-secret= Google_Client_Secret
```


### Mail Service
Setup a mail service and get required credentials including :
```bash
spring.mail.host= Email_host
spring.mail.username= Email_Username
spring.mail.password= Email_password
spring.mail.properties.mail.transport.protocol=smtp
spring.mail.properties.mail.smtp.port= Mail_port
spring.mail.properties.mail.smtp.auth=true
spring.mail.properties.mail.smtp.starttls.enable=true
spring.mail.properties.mail.smtp.starttls.required=true
from.email.address= 123@gmail.com
```

Below are some integrations where you can export your tickets to. Configure the integration of your choice by adding the required credentials mentioned below.
- [Jira](#jira-integration)
- [Google Sheets](#google-sheets-integration)
- [Slack](#slack-integration)
- [Linear](#linear-integration)
- [Github](#github-integration)
- [Clickup](#clickup-integration)

<h2 id="jira-integration"> Jira integration </h2>
Add your Jira account credentials including 
```bash
spring.atlassian.jira.client_id= Your_Jira_Client_Id
spring.atlassian.jira.client_secret= Your_Jira_Client_Secret
spring.atlassian.jira.auth_endpoint=https://auth.atlassian.com/oauth/token
spring.atlassian.jira.accessible_resource_endpoint=https://api.atlassian.com/oauth/token/accessible-resources
```

<h2 id="google-sheets-integration"> Google Sheets integration </h2>
Add your Google Service Account credentials including 
```
spring.google.service_account.private_key_id= Google_Service_Account_Private_Key_Id
spring.google.service_account.private_key= Google_Service_Account_Private_Key
spring.google.service_account.client_email="Google_Service_Account_Email
spring.google.service_account.client_id= Google_Service_Account_Client_Id
```


<h2 id="slack-integration"> Slack integration </h2>

Add your Slack account credentials including 
```
spring.slack.clientId= Your_Slack_Id
spring.slack.clientSecret= Your_Slack_Secret
spring.slack.quash.accesstoken= Your_Slack_Access_Token
```


<h2 id="linear-integration"> Linear integration </h2>
Add your Linear account credentials including 
```
spring.linear.client_id= Your_Linear_Id
spring.linear.client_secret= Your_Linear_Secret
```

<h2 id="github-integration"> Github </h2>
Add your Github account credentials including 
```
spring.github.client_id= Your_Github_Id
spring.github.client_secret= Your_Github_Secret
```

<h2 id="clickup-integration"> Clickup integration </h2>
Add your Slack account credentials including 
```bash
spring.clickup.client_id= Your_Clickup_Id
spring.clickup.client_secret= Your_Clickup_Secret
```

**Set a Jasypt Password Encryption Key**
```bash
jasypt.encryption.password= Set a password
```

## Run Locally
Run the `QuashApplication` File

[![View API Docs](https://github.com/dhairya-quash/TEST-REPO/assets/161799860/4bf82545-9dc6-497b-857b-5148a57521e0)](http://localhost:8080/swagger-ui/index.html)

