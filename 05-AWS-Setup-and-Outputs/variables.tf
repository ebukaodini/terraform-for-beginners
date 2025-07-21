variable "region" {
  type        = string
  description = "The AWS region"
  default     = "us-east-1"
}

variable "access_key" {
  type        = string
  description = "The AWS access key"
  default     = "test"
}

variable "secret_key" {
  type        = string
  description = "The AWS secret key"
  default     = "test"
}

variable "my_instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t2.micro"
}
