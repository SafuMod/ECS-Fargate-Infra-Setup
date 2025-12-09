variable "aws_region" {
  description = "AWS region where resources will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "assume_role_arn" {
  description = "Harness CD Delegate role that Terraform will assume"
  type        = string
  default     = "arn:aws:iam::651706779238:role/HarnessCDDelegateRole"
}

variable "env" {
  description = "Environment for the deployment (e.g - dev,qa,stg,prd)"
  type        = string
  default     = "dev"
}

locals {
  ApplicationCI = "saf"
}
