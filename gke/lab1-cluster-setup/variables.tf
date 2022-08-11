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

/* variable "region" {
  description = "the default region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "the default zone"
  type        = string
  default     = "us-central1-a"
}
 */