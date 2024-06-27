# Official Backend for [Quash](https://quashbugs.com/)

Welcome to the Quash Web Backend, your ultimate in-app bug reporting tool! Built by developers for developers, this web dashboard captures everything you need to start fixing issues right away. It dispalys crash logs, session replays, network logs, device information, and much more, ensuring you have all the details at your fingertips.

<div align="center"> <img src="https://github.com/dhairya-quash/TEST-REPO/assets/161799860/7f7b7ffd-66f4-45d7-b68e-01fcedff0a75" alt="Logo" width=1000> </div>
<br>

| **Reporting** 🗒️ | **Resolution** ✅ | **Collaboration** 🤝🏻 |
| :--------: | :---------: | :---------: |
| Raise comprehensive tickets with minimal effort | Know exactly where the bug is - and how to fix it | Manage all your testing workflows in a single place |

---

## Table of Contents
- [Project Architecture](#project-architecture)
- [Installation](#installation)
- [Configuration](#configuration)
- [Optional Integrations](#optional-integrations)
- [Run Locally](#run-locally)

## Project Architecture

The project is structured into the following layers:

- **Controller**
- **Service**
- **Repository**
- **Model**
- **DTO**
- **Utility**

<div align="center"><img src="https://github.com/dhairya-quash/TEST-REPO/assets/161799860/2f2e2354-0158-4cd8-879b-4d32aeb9ac13" alt="Architecture"></div>

## DB Schema
<div align="center"> <img src="https://github.com/dhairya-quash/TEST-REPO/assets/161799860/6a21b88f-9ae5-4b72-9270-fe356412dc16" alt="Flow" width=1000> </div>
<br>

## Report Generation Flow
<div align="center"> <img src="https://github.com/Oscorp-HQ/quash-backend/assets/161799860/65d6b494-4867-43ed-970a-676feb6a7272" alt="Flow" width=1000> </div>
<br>

This guide will provide you steps to setup and configure the Backend for Quash Max.

Quash Max is built using the following technologies:
- [Spring Boot](https://docs.spring.io/spring-boot/docs/current/reference/html/getting-started.html#getting-started.installing)
- [MongoDB](https://www.mongodb.com/docs/manual/installation/)
- Maven
- JWT Authentication

# Installation
```bash
# Move to your workspace
cd your-workspace

# Clone this project in your workspace
git clone https://github.com/Oscorp-HQ/QuashBackend.git

# Move to the project root directory
cd QuashBackend

#Run this maven command
mvn clean install
```

## Application.properties
> Navigate to the resources directory and open the `application.properties` file. Here you will add your database connection strings, access tokens, secret keys for different integrations and services.<br>
>

**JWT configurations**
```java
jwt.secret={JWT_SECRET}
jwt.expirationMs={JWT_EXPIRATION_MS}
token.signing.key={TOKEN_SIGNING_KEY}
```

**Set a Jasypt Password Encryption Key**
```java
jasypt.encryption.password={JASYPT_ENCRYPTION_PASSWORD}
```

**Add your Frontend URL**
```java
spring.frontend.url={FRONTEND_URL}
```

**Add your Spring Base URL**
```java
spring.url={BACKEND_URL}
```
**Set Access and Refresh Token expiry time**
```java
# Access Token expiry - 6 days
token.accessToken.expiration=518400000
# Refresh Token expiry - 8 days
token.refreshToken.expiration=691200000
```
**File upload configurations**
```java
spring.servlet.multipart.enabled=true
spring.servlet.multipart.max-file-size=15MB
spring.servlet.multipart.max-request-size=15MB
```
**Management endpoint configurations**
```java
management.endpoints.web.exposure.include=*
spring.main.lazy-initialization=true
```

**MongoDB Connection String for Database** 
```java
spring.data.mongodb.uri={MONGODB_URI}
```

**Cloud provider configurations**
```java
# Specify the cloud provider (aws, gcp, azure)
cloud.provider={CLOUD_PROVIDER}
```

**GCP-specific properties**
```java
gcp.bucket.name={GCP_BUCKET_NAME}
gcp.credentials.project-id={GCP_PROJECT_ID}
gcp.credentials.client-email={GCP_CLIENT_EMAIL}
gcp.credentials.private-key={GCP_PRIVATE_KEY}
```

**AWS-specific properties**
```java
aws.access.key.id={YOUR_ACCESS_KEY_ID}
aws.secret.access.key={YOUR_SECRET_ACCESS_KEY}
aws.bucket.name={YOUR_BUCKET_NAME}
aws.region={region}
```

**Azure-specific properties**
```java
azure.account.name={AZURE_ACCOUNT_NAME}
azure.account.key={AZURE_ACCOUNT_KEY}
azure.container.name={AZURE_CONTAINER_NAME}
```

**Mail Service**
Setup a mail service and get required credentials
```java
spring.mail.host={SMTP_HOST}
spring.mail.username={SMTP_USERNAME}
spring.mail.password={SMTP_PASSWORD}
spring.mail.properties.mail.transport.protocol=smtp
spring.mail.properties.mail.smtp.port=587
spring.mail.properties.mail.smtp.auth=true
spring.mail.properties.mail.smtp.starttls.enable=true
spring.mail.properties.mail.smtp.starttls.required=true
from.email.address={FROM_EMAIL_ADDRESS}
```

### Optionally you can use Google OAuth for signin and signup.
**Google OAuth**
```java
spring.security.oauth2.client.registration.google.client-id={YOUR_CLIENT_ID}
spring.security.oauth2.client.registration.google.client-secret={YOUR_CLIENT_SECRET}
```

## Optional Integrations
Below are some integrations where you can export your tickets to. Configure the integration of your choice by adding the required credentials mentioned.
- [Jira](#jira-integration)
- [Google Sheets](#google-sheets-integration)
- [Slack](#slack-integration)
- [Linear](#linear-integration)
- [Github](#github-integration)

<h3 id="jira-integration"> Jira integration </h3>
<div>Add your Jira account credentials</div>

```java
spring.atlassian.jira.client_id={ATLASSIAN_JIRA_CLIENT_ID}
spring.atlassian.jira.client_secret={ATLASSIAN_JIRA_CLIENT_SECRET}
spring.atlassian.jira.auth_endpoint={ATLASSIAN_JIRA_AUTH_ENDPOINT}
spring.atlassian.jira.accessible_resource_endpoint={ATLASSIAN_JIRA_RESOURCE_ENDPOINT}
```


<h3 id="slack-integration"> Slack integration </h3>

Add your [Slack](https://api.slack.com/apps) account credentials
```java
spring.slack.heimdall_clientId={SLACK_HEIMDALL_CLIENT_ID}
spring.slack.heimdall_clientSecret={SLACK_HEIMDALL_CLIENT_SECRET}
spring.slack.redirectUri={SLACK_REDIRECT_URI}
```


<h3 id="linear-integration"> Linear integration </h3>

Add your Linear account credentials
```java
spring.linear.client_id={LINEAR_CLIENT_ID}
spring.linear.auth_endpoint={LINEAR_AUTH_ENDPOINT}
spring.linear.redirect_uri={LINEAR_REDIRECT_URI}
spring.linear.client_secret={LINEAR_CLIENT_SECRET}
```

<h3 id="github-integration"> Github </h3>

Add your Github account credentials
```java
spring.github.client_id={GITHUB_CLIENT_ID}
spring.github.client_secret={GITHUB_CLIENT_SECRET}
spring.github.redirect_url={GITHUB_REDIRECT_URL}
```

## Run Locally
Run the `QuashApplication` File
```java
mvn spring-boot:run
```
