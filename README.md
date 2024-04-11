# <p align="center"> Sherlock - DevTool for Automated Bug Reporting & Resolution </p>
<div align="center"> <img src="https://github.com/dhairya-quash/TEST-REPO/assets/161799860/58b129ab-5c12-48af-8b91-66c0999cae28" alt="Logo" width="100"> </div>

### <p align="center"><strong>Mobile Testing should not be slow and tangled.</strong></p>

### <p align="center"><strong>We’re on a mission to make it smooth and simple</strong></p>

| **Reporting** 🗒️ | **Resolution** ✅ | **Collaboration** 🤝🏻 |
| :--------:    | :---------:    | :------------:    |
| Raise comprehensive tickets with minimal effort | Know exactly where the bug is - and how to fix it | Manage all your testing workflows in a single place |
---

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
> Navigate to the resources directory and open the `application.properties` file. Here you will add your database connection strings, access tokens, secret keys for different integrations and services.<br>

### Adding required credentials and strings in the `application.properties` file

Add your **MongoDB** connection string for your database 
```
spring.data.mongodb.uri='mongodb_connection_string'
```

JWT configurations -
```bash
jwt.secret='your_secret'
jwt.expirationMs='expiration_time'
token.signing.key='jwt_singing_key'
```

**Set a Jasypt Password Encryption Key**
```bash
jasypt.encryption.password='encryption_password'
```

If you have setup the frontend, add a Frontend URL
```
spring.frontend.url='your_frontend_url'
```

**Google OAuth**
```bash
spring.security.oauth2.client.registration.google.client-id='google_client_id'
spring.security.oauth2.client.registration.google.client-secret='google_client_secret'
```


**Mail Service**
Setup a mail service and get required credentials
```bash
spring.mail.host='email_host'
spring.mail.username='email_username'
spring.mail.password='email_password'
spring.mail.properties.mail.transport.protocol=smtp
spring.mail.properties.mail.smtp.port='mail_port'
spring.mail.properties.mail.smtp.auth=true
spring.mail.properties.mail.smtp.starttls.enable=true
spring.mail.properties.mail.smtp.starttls.required=true
from.email.address='your_email@example.com'
```

## Optional Integrations
Below are some integrations where you can export your tickets to. Configure the integration of your choice by adding the required credentials mentioned.
- [Jira](#jira-integration)
- [Google Sheets](#google-sheets-integration)
- [Slack](#slack-integration)
- [Linear](#linear-integration)
- [Github](#github-integration)
- [Clickup](#clickup-integration)

<h3 id="jira-integration"> Jira integration </h3>
<div>Add your Jira account credentials</div>

```
spring.atlassian.jira.client_id='jira_client_id'
spring.atlassian.jira.client_secret='jira_client_secret'
spring.atlassian.jira.auth_endpoint=https://auth.atlassian.com/oauth/token
spring.atlassian.jira.accessible_resource_endpoint=https://api.atlassian.com/oauth/token/accessible-resources
```

<h3 id="google-sheets-integration"> Google Sheets integration </h3>

Add your Google Service Account credentials
```
spring.google.service_account.private_key_id='google_private_key_id'
spring.google.service_account.private_key='private_key'
spring.google.service_account.client_email='account_email'
spring.google.service_account.client_id='client_id'
```


<h3 id="slack-integration"> Slack integration </h3>

Add your Slack account credentials
```
spring.slack.clientId='slack_client_id'
spring.slack.clientSecret='slack_client_secret'
spring.slack.quash.accesstoken='slack_client_access_token'
```


<h3 id="linear-integration"> Linear integration </h3>

Add your Linear account credentials
```
spring.linear.client_id='linear_client_id'
spring.linear.client_secret='linear_client_secret'
```

<h3 id="github-integration"> Github </h3>

Add your Github account credentials
```
spring.github.client_id='github_client_id'
spring.github.client_secret='github_client_secret'
```

<h3 id="clickup-integration"> Clickup integration </h3>

Add your Slack account credentials
```
spring.clickup.client_id='clickup_client_id'
spring.clickup.client_secret='clickup_client_secret'
```

## Run Locally
Run the `QuashApplication` File

[![View API Docs](https://github.com/dhairya-quash/TEST-REPO/assets/161799860/4bf82545-9dc6-497b-857b-5148a57521e0)](http://localhost:8080/swagger-ui/index.html)

