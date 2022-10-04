variable "project_id" {
  description = "the project id"
  type        = string
}

variable "key_name" {
  description = "the name of the credential key"
  type        = string
}


variable "region" {
  description = "the default region"
  type        = string
}

variable "zone" {
  description = "the default zone"
  type        = string
}


variable "gke_username" {
  description = "gke username"
  type = string
}

variable "gke_password" {
  description = "gke password"
  type = string
}

variable "gke_num_nodes" {
  default     = 1 
  description = "number of gke nodes"
}