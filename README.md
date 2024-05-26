# Official Backend for Quash

<div align="center"> <img src="https://github.com/dhairya-quash/TEST-REPO/assets/161799860/7f7b7ffd-66f4-45d7-b68e-01fcedff0a75" alt="Logo" width=1000> </div>



| **Reporting** 🗒️ | **Resolution** ✅ | **Collaboration** 🤝🏻 |
| :--------: | :---------: | :---------: |
| Raise comprehensive tickets with minimal effort | Know exactly where the bug is - and how to fix it | Manage all your testing workflows in a single place |

---

## Table of Contents
- [Project Architecture](#project-architecture)
- [Installation](#installation)
- [Configuration](#configuration)
- [API Flows](#api-flows)
- [Data Models and DTOs](#data-models-and-dtos)
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

This guide will provide you steps to setup and configure the Backend for Sherlock.

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
