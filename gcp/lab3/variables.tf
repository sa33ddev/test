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

variable "cluster_name" {
  default     = "c1-cp1"
  description = "cluster name"

}