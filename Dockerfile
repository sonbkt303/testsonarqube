# Use the official Jenkins base image
FROM jenkins/jenkins:lts

# Switch to root user to install .NET SDK
USER root

# Install dependencies
RUN apt-get update && \
    apt-get install -y wget apt-transport-https && \
    wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get install -y dotnet-sdk-6.0

# Switch back to the Jenkins user
USER jenkins