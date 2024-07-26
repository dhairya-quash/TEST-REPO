<Meta title="Quash README" />

# Quash: Your Ultimate In-App Bug Reporting Solution

<div align="center"> <img src="https://github.com/user-attachments/assets/e3cdb94c-4596-4955-9f3b-14cc004b1733" alt="Quash Banner" width=1000> </div>
<br>
Welcome to Quash! We're excited to introduce our next-generation mobile development tool designed to revolutionize the way you test and debug your applications. With Quash, identifying and resolving bugs is as easy as a shake of your device. Our intuitive platform auto-captures session replays, crash logs, and more, allowing you to focus on building new features while we handle the bugs.

## Community and Next Steps

We're currently working on a redesign of the application, including a revamp of the codebase, so Documenso can be more intuitive to use and robust to develop upon.

- Check out the first source code release in this repository and test it.
- Join the [Discord](https://discord.com/invite/Nxbe8F6aqw) server for any questions and getting to know to other community members.
- ⭐ the repository to help us raise awareness.
- Spread the word on Twitter that Quash is working towards a more open In-App bug reporting tool.
- Fix or create [issues](https://github.com/Oscorp-HQ/quash-max/issues), that are needed for the first production release.

## Table of Contents

1. [Introduction](#introduction)
2. [Features](#features)
3. [Usage](#usage)
4. [Architecture](#architecture)
5. [Contributing](#contributing)
6. [Developer Setup](#developer-setup)
7. [Deployment](#deployment-with-docker)
8. [License](#license)
9. [Contact](#contact)

## Introduction

Quash is an SDK-enabled bug reporting solution that helps users report bugs efficiently with just a simple shake. Our tool tracks and resolves bugs through the Quash web dashboard, ensuring your mobile apps are released on time with the highest quality standards. With Quash, teams can optimize the time and resources spent on the testing process, making mobile testing smooth and straightforward.

## Features

### Easy Setup

- **Quick Integration:** Integrate the Quash SDK with your application in less than 5 minutes.
- **Detailed Guides:** Follow our comprehensive guides for seamless setup.

### In-App Bug Reporting

- **Shake to Report:** Simply shake your device to launch the reporting window, prefilled with essential information.
- **Intuitive Interface:** Log bugs in seconds with our user-friendly interface.

### Automated Crash Detection

- **Real-Time Capture:** Automatically detect and capture crash events along with all necessary information.
- **Reproduce-Free Debugging:** No need to reproduce crashes manually.

### Information Auto-Capture

- **Comprehensive Data Collection:** Auto-capture screenshots, session recordings, crash logs, steps to reproduce, device information, and API/network calls.
- **Detailed Bug Reports:** Each bug report includes all relevant data at the moment of the crash or when shaking the device.

### External Media Attachments

- **Enhanced Reports:** Add audio recordings, pictures, videos, and other media files to bug reports.

### Bug Tracking and Collaboration

- **Web Dashboard:** Manage all reported bugs and crashes through the Quash web dashboard.
- **Collaboration Tools:** View, track, prioritize, and comment on bugs for efficient resolution.

### Seamless Integrations

- **Popular Tools:** Integrate with Jira, Slack, Google Sheets, Linear, GitHub, and more.
- **Streamlined Workflow:** Export tickets directly to these platforms for a seamless bug tracking and resolution process.

## Usage

### Reporting Bugs

<div align="center"> 
       <img src="https://github.com/user-attachments/assets/9715c172-8663-4bdf-8b92-ed2f1395a1b2" alt="Reporting 1" width=300 style="margin: 0 40px;">
       <img src="https://github.com/user-attachments/assets/44a6623e-a146-4861-881c-37fbcf33c4ab" alt="Reporting 2" width=300 style="margin: 0 40px;">
       <img src="https://github.com/user-attachments/assets/180eb7bc-f218-427c-8127-a23aef4216e7" alt="Reporting 3" width=300 style="margin: 0 40px;">
</div>
<br>

1. **Shake Device:** Trigger the bug report by shaking your device.
2. **Fill Report:** Use the prefilled bug report window to add any additional details.
3. **Submit:** Submit the report, which is then captured and sent to the Quash web dashboard.

### Managing Bugs

<div align="center"> <img src="https://github.com/user-attachments/assets/a23406ea-b511-423f-b38c-5d947fac222d" alt="Quash Banner" width=1000> </div>
<br>

1. **Dashboard Access:** Log in to the Quash web dashboard.
2. **View Reports:** Access detailed bug reports with all captured data.

## Architecture

<div align="center"> <img src="https://github.com/user-attachments/assets/ca5b181b-9e2b-49b8-8d59-f4cd96159ee5" alt="Architecture" width=1000> </div>
<br>
Quash comprises three main components: the SDK, the backend, and the frontend.

### SDK

- **Android SDK:** The Quash SDK for Android provides in-app bug reporting and crash detection.
- **Integration:** Simple integration with your application, including network interception and configuration.

### Backend

- **Spring Boot Application:** Handles API requests, processes bug reports, and manages integrations with third-party tools.
- **Scalable Infrastructure:** Built to handle high volumes of data and concurrent users.

### Frontend

- **Next.js Dashboard:** A user-friendly web interface for viewing and managing bug reports.
- **Real-Time Data:** Displays real-time data captured by the SDK, with options for collaboration and issue tracking.

## Contributing

We love contributions! Please read our [contribution guide](https://github.com/dhairya-quash/TEST-REPO/blob/main/Contribution%20Guide.md) to get started. We welcome all kinds of contributions, from code enhancements to documentation improvements.

## Developer Setup

### Need a quick setup for max? Follow these steps:

1.  [Fork the repository](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/about-forks) to your own Github account.

2.  Move to your workspace:
       ```bash
       cd your-workspace
       ```
3.  After forking the repository, clone it to your local device by using the following command:

    ```bash
    git clone https://github.com/Oscorp-HQ/quash-max.git
    ```

4. Move to the directory of your choice and start making changes:
    ```bash
    # For backend
    cd quash-max/backend

    # For frontend
    cd quash-max/frontend

    # For sdk
    cd quash-max/android
    ```

**For detailed steps for running different components, refer to their respective guides:**

### Note

> Frontend and SDK have a dependency on Backend to view the data and changes that you make. So please have a running backend before proceeding to run frontend or sdk. You can run max backend by either running the code manually or using a pre-built docker image. Follow the [Backend Setup](https://github.com/dhairya-quash/TEST-REPO/tree/main/backend) for detailed steps.

### SDK

For detailed SDK instructions, please refer to the individual [README files in the SDK directory](https://github.com/dhairya-quash/TEST-REPO/tree/main/android).

### Backend

For backend setup and deployment instructions, please refer to the [backend README file](https://github.com/dhairya-quash/TEST-REPO/tree/main/backend).

### Frontend

For frontend setup and deployment instructions, please refer to the [frontend README file](https://github.com/dhairya-quash/TEST-REPO/tree/main/frontend).

## Deployment

For a detailed, step-by-step guide on setting up Quash's Frontend and Backend using Docker, whether on your local machine or a hosted VM instance, please refer to our [Quick Start Guide](https://github.com/dhairya-quash/TEST-REPO/blob/main/Deployment%20Guide.md).

## License

Quash is licensed under the [MIT License](./LICENSE).

## Contact

For any questions or support, please reach out to us at [support@quashbugs.com](mailto:support@quashbugs.com).

---

Thank you for choosing Quash! We look forward to helping you streamline your mobile app testing and bug reporting processes. Let's build something amazing together!
