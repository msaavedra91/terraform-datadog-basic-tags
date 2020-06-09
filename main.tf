# Module that creates objects that can be referenced.
#
locals {
  monitor_tags = [
    "environment             :${var.environment}",
    "productName             :${var.productName}",
    "platformName            :${var.platformName}",
    "VcsRepo                 :${var.vcs_repo}"
  ]

  ddog_message_footer = <<-EOS
- - -
**NOTE** - This monitor is managed via [Terraform](${var.vcs_repo}). Manual modifications will be lost.

  EOS
}