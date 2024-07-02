variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
  default     = "RG1"
}

variable "location" {
  description = "Location of the resources."
  type        = string
  default     = "East US"
}

variable "container_group_name" {
  description = "Name of the container group."
  type        = string
  default     = "example-containergroup"
}

variable "container_name" {
  description = "Name of the container."
  type        = string
  default     = "example-container"
}

variable "container_image" {
  description = "Docker image for the container."
  type        = string
  default     = "nginx:latest"
}

variable "container_cpu" {
  description = "CPU requirement for the container."
  type        = string
  default     = "0.5"
}

variable "container_memory" {
  description = "Memory requirement for the container."
  type        = string
  default     = "1.5"
}

variable "container_port" {
  description = "Port exposed by the container."
  type        = number
  default     = 80
}

variable "environment_variables" {
  description = "Environment variables for the container."
  type        = map(string)
  default     = {
    NGINX_PORT = "80"
  }
}

variable "tags" {
  description = "Tags for the container group."
  type        = map(string)
  default     = {
    environment = "testing"
  }
}

variable "dns_name_label" {
  description = "DNS name label for the container group."
  type        = string
  default     = "example-containergroup"
}

variable "subscription_id" {
  description = "Subscription ID."
  type        = string
  default     = "a756617e-ec13-4026-b746-05ef8c3c4fc3"
}
