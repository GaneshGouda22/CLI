#!/bin/bash

# create vpc
vpc_id=$(aws ec2 create-vpc --cidr-block "192.168.0.0/16" \
    --tag-specifications "ResourceType=vpc,Tags=[{Key=Name,Value=Practicevpc}]" \
    --query "Vpc.VpcId" \
    --output text)

echo "VPC ID: ${vpc_id}"

web1_subnet=$(aws ec2 create-subnet \
    --vpc-id ${vpc_id} \
    --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=Web-1}]" \
    --cidr-block "192.168.0.0/24" \
    --availability-zone "ap-south-1a" \
    --query "Subnet.SubnetId" \
    --output text)

echo " web1 subnet ID: ${web1_subnet}"


web2_subnet=$(aws ec2 create-subnet \
    --vpc-id ${vpc_id} \
    --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=Web-2}]" \
    --cidr-block "192.168.1.0/24" \
    --availability-zone "ap-south-1b" \
    --query "Subnet.SubnetId" \
    --output text)

echo " web2 subnet ID: ${web2_subnet}"


db1_subnet=$(aws ec2 create-subnet \
    --vpc-id ${vpc_id} \
    --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=db-1}]" \
    --cidr-block "192.168.2.0/24" \
    --availability-zone "ap-south-1a" \
    --query "Subnet.SubnetId" \
    --output text)

echo " DB1 subnet ID: ${db1_subnet}"

db2_subnet=$(aws ec2 create-subnet \
    --vpc-id ${vpc_id} \
    --tag-specifications "ResourceType=subnet,Tags=[{Key=Name,Value=db-2}]" \
    --cidr-block "192.168.3.0/24" \
    --availability-zone "ap-south-1b" \
    --query "Subnet.SubnetId" \
    --output text)

echo "DB2 subnet ID: ${db2_subnet}"




