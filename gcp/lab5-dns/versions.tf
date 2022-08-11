terraform {
  required_version = ">=0.13"
  required_providers {
    google = {
      version = ">= 2.7.0"
      source  = "hashicorp/google"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 3.63.0"
    }
  }
}