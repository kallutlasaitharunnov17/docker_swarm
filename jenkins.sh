#!/bin/bash

# Update packages
yum update -y

# Install Java
yum install java-17-amazon-corretto -y

# Add Jenkins repo
wget -O /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import Jenkins key
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Install Jenkins
yum install jenkins -y

# Enable and start Jenkins
systemctl enable jenkins
systemctl start jenkins

# Check Jenkins status
systemctl status jenkins

# Show initial admin password
echo "Jenkins Initial Password:"
cat /var/lib/jenkins/secrets/initialAdminPassword
