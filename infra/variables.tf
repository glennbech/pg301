variable "apprunner_name" {
  description = "the service name"
  type = string
}

# task 2

#variable "instance_role_arn" {
#  description = "ARN for the instance role used in App Runner"
#  type        = string
#}

variable "access_role_arn" {
  description = "ARN for access role used in App Runner"
  type        = string
}

variable "image_identifier" {
  description = "Identifier for the Docker image in ECR"
  type        = string
}

variable "iam_role_name" {
  description = "Name of the IAM role for App Runner service"
  type        = string
}

variable "iam_policy_name" {
  description = "Name of the IAM policy for App Runner service"
  type        = string
}
