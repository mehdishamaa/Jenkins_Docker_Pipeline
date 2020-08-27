#!/bin/bash

  scp -i ~/.ssh/DevOpsStudents.pem -r ~/Users/medimidi/Desktop/NodeJS-AWS-DeployCode/app ubuntu@ec2-34-247-86-225.eu-west-1.compute.amazonaws.com:/home/ubuntu/
  ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@ec2-34-247-86-225.eu-west-1.compute.amazonaws.com -i $ mkdir environment
  scp -i ~/.ssh/DevOpsStudents.pem -r ~/Users/medimidi/Desktop/NodeJS-AWS-DeployCode/environment/app ubuntu@ec2-34-247-86-225.eu-west-1.compute.amazonaws.com:/home/ubuntu/environment
  ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@ec2-34-247-86-225.eu-west-1.compute.amazonaws.com -i $ ./environment/app/provisions.sh

