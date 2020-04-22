# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
}

# Create a VPC
resource "aws_vpc" "k8-cluster-vpc" {
  cidr_block = "10.8.0.0/16"
}
