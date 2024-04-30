#!/bin/bash

apt install -y unzip

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install

aws --version

rm -rf aws
rm awscliv2.zip

# Already in .bashrc /shrug
export AWS_DEFAULT_REGION=us-east-2

echo Reminder: Use aws configure to set credentials
