# Deploy NodeJS application on AWS EKS cluster

## Overview
The DevOps project aims to automate the Continuous Integration (CI) and Continuous Deployment (CD) pipelines for a NodeJS application. Using GitHub Actions for CI/CD, Ansible for configuration management, Docker for containerization, SonarQube for code analysis, NPM for install dependencies,Dockerhub for image registry,AWS EKS to build Kubernetes cluster, Terraform for infrastructure management, and Slack to send notification for CI/CD processes, the project streamlines development and deployment processes.

![](https://github.com/starboyhassan/Deploy-Nodejs-App-on-EKS/blob/main/digram/nodejs-app-digram.png)

## Tools

- **GitHub Actions**: For orchestrating CI/CD workflows triggered by GitHub repository events.
- **Ansible**: Used to install and configure tools such as GitHub Actions self-hosted runner, Docker, SonarQube, NodeJS, npm, awscli, kubectl, and Terraform on an EC2 instance.
- **Docker**: Utilized for containerizing the NodeJS application and building Docker images.
- **Dockerhub**: Used as the Docker image registry to store built images.
- **SonarQube**: Performs static code analysis to identify code quality and security issues.
- **NodeJS and npm**: Used for managing dependencies and running the NodeJS application.
- **awscli and kubectl**: CLI tools for interacting with AWS services and Kubernetes clusters.
- **Terraform**: Infrastructure as Code tool for provisioning EKS cluster on AWS.
- **AWS EKS**: Used for Kubernate Cluster.
- **Slack**: Used for receiving notifications on CI/CD pipeline success or failure.
---
## Project Structure

- **GitHub Repository Structure:**
    - Contains application files, Ansible tasks, GitHub Actions workflows, Dockerfile, deployment-service file, sonar-project.properties, and Terraform files.
- **CI Workflow:**
    - Analyzes code using SonarQube, installs dependencies with npm, builds Docker images, pushes them to DockerHub, and send notification to Slack.
- **CD Workflow:**
    - Pulls the Docker image from DockerHub, updates deployment-service manifest with the new image tag, deploys to AWS EKS using kubectl, and send notification to Slack.

## Step-by-Step 

### 1. CI Pipeline:

1) Developer commits to the GitHub project repository.
2) GitHub triggers the GitHub Actions CI workflow.
3) CI workflow checks out the repository and analyzes code using SonarQube.
4) Dependencies are installed using npm.
5) Docker builds a Docker image with a new commit tag.
6) Docker image is pushed to DockerHub.
7) GitHub Actions sends notifications to Slack on CI workflow success or failure.

### 2. CD Pipeline:
1) After successful completion of the CI workflow, the CD workflow is triggered.
2) CD workflow pulls the Docker image from DockerHub.
3) Deployment-service manifest file is updated with the new image tag.
4) Kubeconfig is updated to point to the AWS EKS cluster.
5) Application is deployed to AWS EKS using kubectl.
6) GitHub Actions sends notifications to Slack on CD workflow success or failure.

----
## Conclusion

#### This DevOps project demonstrates the automation of CI/CD pipelines for a NodeJS application, leveraging a combination of tools such as GitHub Actions, Ansible, Docker, SonarQube, Dockerhub, NPM, AWSCLI, KubeCTL,Terraform, AWS EKS, and Slack. By streamlining development and deployment processes, the project enhances efficiency, scalability, and reliability, ultimately contributing to improved software delivery practices and business agility.




