variable "project_id" {
  description = "the project id"
  type        = string
  default     = "stalwart-kite-357609"
}

variable "key_name" {
  description = "the name of the credential key"
  type        = string
  default     = "key-test-tf.json"
}

variable "region" {
  description = "the default region"
  type        = string
  default     = "europe-north1"
}

variable "zone" {
  description = "the default zone"
  type        = string
  default     = "europe-north1-a"
}

variable "instance_name" {
  description = "the name of instance"
  type        = string
  default     = "instace-1"

}

variable "service-account_id" {
  description = "the service account for compute"
  type        = string
  default     = "lsa-lab2-tf"

}