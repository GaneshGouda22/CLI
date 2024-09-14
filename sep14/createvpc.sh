#!/bin/bash

# create vpc
aws ec2 create-vpc --cidr-block "192.168.0.0/16" \
    --tag-specifications "ResourceType=vpc,Tags=[{Key=Name,Value=Practicevpc}]" 
# "VpcId": "vpc-07297c658a02dd4de"

aws ec2 create-subnet \
    --vpc-id "vpc-07297c658a02dd4de" \
    --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=Web-1}]" \
    --cidr-block "192.168.0.0/24" \
    --availability-zone "ap-south-1a"
# "SubnetId": "subnet-07588d5bfdc8a466b"

aws ec2 create-subnet \
    --vpc-id "vpc-07297c658a02dd4de" \
    --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=Web-2}]" \
    --cidr-block "192.168.1.0/24" \
    --availability-zone "ap-south-1b"
#  "SubnetId": "subnet-07b2b0d2b0cef6ea7"

aws ec2 create-subnet \
    --vpc-id "vpc-07297c658a02dd4de" \
    --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=db-1}]" \
    --cidr-block "192.168.2.0/24" \
    --availability-zone "ap-south-1a"
#  "SubnetId": "subnet-0868c9a8821ebde0e"

aws ec2 create-subnet \
    --vpc-id "vpc-07297c658a02dd4de" \
    --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=db-2}]" \
    --cidr-block "192.168.3.0/24" \
    --availability-zone "ap-south-1b"
# "SubnetId": "subnet-0bb174d1cfe5503d2"



