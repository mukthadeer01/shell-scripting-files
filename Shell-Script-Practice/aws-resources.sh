#!/bin/bash

#########################
# Author: Mukthadeer
# Date: 13-08-2026
# Version 1
#
# This script is to list all the resources
#########################

set -x # Debug mode

# AWS EC2
echo "Print the list of AWS EC2 Instances"
aws ec2 describe-instances | jq ".Reservations[].Instances[].InstanceId" >> /home/ubuntu/mukthadeer/Shell-Scripting-Files/AWS-EC2.txt

# AWS Lambda
echo "Print the list of AWS Lambda Functions"
aws lambda list-functions >> /home/ubuntu/mukthadeer/Shell-Scripting-Files/AWS-Lambda.txt

# AWS S3
echo "Print the list of AWS S3 Buckets"
aws s3 ls >> /home/ubuntu/mukthadeer/Shell-Scripting-Files/AWS-S3.txt

# AWS IAM
echo "Print the list of AWS IAM Users"
aws iam list-users >> /home/ubuntu/mukthadeer/Shell-Scripting-Files/AWS-IAM.txt
