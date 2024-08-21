variable "cluster_name" {
  description = "The name of the cluster (eg.: cloud-platform-live-0)"
}

variable "team_name" {}
variable "application" {}
variable "environment-name" {}
variable "namespace" {}

variable "is-production" {
  default = "false"
}

variable "business-unit" {
  description = "Area of the MOJ responsible for the service"
  default     = "mojdigital"
}

variable "infrastructure-support" {
  description = "The team responsible for managing the infrastructure. Should be of the form <team-name> (<team-email>)"
}

variable "engine_type" {
  description = "Engine used e.g. ActiveMQ, STOMP"
  default     = "ActiveMQ"
}

variable "engine_version" {
  description = "The engine version to use e.g. 5.15.8"
  default     = "5.15.6"
}

variable "host_instance_type" {
  description = "The broker's instance type. e.g. mq.t2.micro or mq.m5.large"
  default     = "mq.t2.micro"
}

variable "deployment_mode" {
  description = "The deployment mode of the broker. Supported: SINGLE_INSTANCE and ACTIVE_STANDBY_MULTI_AZ"
  default     = "SINGLE_INSTANCE"
}

variable "aws_region" {
  description = "Region into which the resource will be created."
  default     = "eu-west-2"
}

variable "auto_minor_version_upgrade" {
  description = "true/false - whether to enable automatic minor upgrades. Note: with ActiveMQ 5.18, this must be true"
  default     = false
}
