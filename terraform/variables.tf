variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "app_name" {
  description = "Application name"
  default     = "vprofile"
}

variable "container_port" {
  description = "Container port"
  default     = 8080
}

variable "cpu" {
  default = "256"
}

variable "memory" {
  default = "512"
}