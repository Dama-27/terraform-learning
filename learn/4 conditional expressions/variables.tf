variable "create_instance" {
  description = "Create an EC2 instance based on the value of this variable"
  type        = bool
  default     = true
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "enable_ssh" {
  description = "Enable SSH access"
  type        = bool
  default     = true
}