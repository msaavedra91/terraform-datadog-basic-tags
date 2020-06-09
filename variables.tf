# Variables
#
variable "environment" {
  type        = string
  description = "Environment (prod, stg, qa, dev, etc) that this service and resources belong to."
}

variable "productName" {
  type        = string
  default     = ""
  description = "Identities product experiences that rely on the applications."
}

variable "platformName" {
  type        = string
  default     = ""
  description = "Identities which product engineering platform these resources support."
}

variable "vcs_repo" {
  type        = string
  description = "This allows for quick troubleshooting of issues and finding the controlling infrastructure code to make required changes to. May want to have a source code version as well."
}