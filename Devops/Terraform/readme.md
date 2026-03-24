# TF Installation

````
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
````

# AWS CLI Install

````
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
````

# Create aws profile 

````
aws configure --profile "tf-user"
````

- access key
- secret key
- region

# create provider.tf file 

````
provider "aws" {
  region = "ap-southeast-1"
  profile = "tf-user"
````

# Initialize TF 
````
terraformm init
````
