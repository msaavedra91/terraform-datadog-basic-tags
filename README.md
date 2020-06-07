# Terraform Datadog Basic Tags 

## Overview

Terraform code that centralizes and eases the inclusion of tags for resources in Datadog.

## Usage
This module should be called in your terraform code within a module declaration.

Example module declaration (for the tagged release of this repo at 1.0.0):
```
module "datadog_tags" {
    source                  = "git::git@github.com:msaavedra91/terraform-datadog-basic-tags.git?ref=1.0.0"
    environment             = var.env_name
    productName             = var.productName
    platformName            = var.platformName
    infrastructureVcsRepo   = var.infrastructure_vcs_repo
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| environment | Environment (prod, stg, qa, dev, etc) that this service and resources belong to. | string | `""` | yes |
| productName | Identities product experiences that rely on the applications. Examples: ESPN, ABCOTV, ABCNews, Fox. | string | `""` | no |
| platformName | Identities which product engineering platform these resources support. Examples: Video, News, Infrastructure, Distribution, Messaging, Games, Editorial | string | `""` | no |
| infrastructure_vcs_repo | This allows for quick troubleshooting of issues and finding the controlling infrastructure code to make required changes to. | string | `""` | yes |

## Outputs

| Name | Description |
|------|-------------|
| monitor_tags | Datadog tags |
| ddog_message_footer | Datadog footer message |

## Add additional tags

Note that these tags provided by the module are basic, that is, the ones I consider that every resource in Datadog must have (at least).

If you want to add more tags, just call the ```concat()``` function and add them, this way:
```
tags = concat(module.datadog_labels.monitor_tags,["tag1:${var.tag1}"],
                ["tag2:${var.tag2}"],
                ["tag3:${var.tag3}"])
```