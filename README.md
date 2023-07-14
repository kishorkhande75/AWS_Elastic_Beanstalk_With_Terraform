# AWS_Elastic_Beanstalk_With_Terraform

# AWS Elastic Beanstalk Resources

This repository contains Terraform code to provision AWS Elastic Beanstalk resources.

## Prerequisites

- Terraform installed on your local machine
- AWS credentials configured for Terraform

## Usage

1. Clone this repository:

    <code>git clone https://github.com/kishorkhande75/AWS_Elastic_Beanstalk_With_Terraform.git</code>

    <code>cd <em>repository-directory</em> </code>

    Update the variables.tf file with your desired configuration.

2. Initialize the Terraform workspace:
- terraform init
3. Review the plan to see the resources that will be created:

- terraform plan

4. Apply the Terraform configuration to create the resources:

- terraform apply
5. Clean up the resources when no longer needed:

- terraform destroy

# Resources

This Terraform code provisions the following AWS Elastic Beanstalk resources:

IAM Role: aws-elasticbeanstalk-ec2-role
IAM Role Policy Attachments:
AWSElasticBeanstalkWebTier
AWSElasticBeanstalkWorkerTier
AWSElasticBeanstalkMulticontainerDocker


**Feel free to modify the content and structure to match your specific needs.**