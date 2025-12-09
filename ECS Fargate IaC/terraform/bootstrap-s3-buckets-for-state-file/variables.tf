variable "aws_region" {
  description = "AWS region where resources will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "assume_role_arn" {
  description = "Harness CD Delegate role that Terraform will assume"
  type        = string
  default     = "arn:aws:iam::651706779138:role/HarnessCDDelegateRole"
}

variable "env" {
  description = "Environment for the deployment (e.g - dev,qa,stg,prd)"
  type        = string
  default     = "dev"
}

variable "bucket_name" {
  description = "Name of the S3 bucket to create for storing Terraform state files"
  type        = string
  default     = "saf-test-statefile-us-east-1-dev-651706779138"
}

locals {
  ApplicationCI = "saf"
}
