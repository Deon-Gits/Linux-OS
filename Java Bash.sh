#!/bin/bash

echo "Updating system packages..."
sudo apt update -y

echo "Installing required packages..."
sudo apt install -y software-properties-common

echo "Adding OpenJDK repository..."
sudo add-apt-repository -y ppa:openjdk-r/ppa

echo "Updating package list..."
sudo apt update -y

echo "Installing latest OpenJDK..."
sudo apt install -y openjdk-21-jdk

echo "Checking Java installation..."
if java -version > /dev/null 2>&1; then
    echo "Java installed successfully!"
    java -version
else
    echo "Java installation failed!"
    exit 1
fi
