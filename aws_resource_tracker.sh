#!/bin/bash

####################
#Author :Sai Teja Shaga
#Date: 14th Jan
#
##Version :v1
#
#This script will report the AWS resource usage
###########

set -x
#AWS S3
#AWS EC2
#AWS LAMBDA
#AWS IAM USERS

#LIST S3 BUCKETS
echo "print list of s3 buckets"
aws s3 ls

#List ec2 instances
echo "print list of Ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


#list lambda
echo "print list of lambda functions"
aws lambda list-functions

#list IAM users
echo "print list of IAM users"
aws iam list-users
