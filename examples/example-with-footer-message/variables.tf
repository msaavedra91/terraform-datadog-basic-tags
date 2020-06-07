variable "datadog_api_key" {
    description = "Datadog API key"
}

variable "datadog_app_key" {
    description = "Datadog App key"
}

variable "env_name" {
    type        = string
    description = "The environment the Lambda is deployed to"
}

# Tags
#
variable "productName" {
    type        = string
    default     = "ESPN"
    description = "Identities product experiences that rely on the applications. individual applications can an do support multiple product experiences. Examples: ESPN+, unison, abcnews"
}

variable "platformName" {
    type        = string
    default     = "Distribution"
    description = "Identities which product engineering platform these resources support. Examples: Video, News, Infrastructure, Distribution, Messaging, Games, Editorial"
}

variable "scm_url" {
    type        = string
    default     = "https://github.com/msaavedra91/terraform-datadog-basic-tags"
    description = "This allows for quick troubleshooting of issues and finding the controlling infrastructure code to make required changes to. May want to have a source code version as well."
}