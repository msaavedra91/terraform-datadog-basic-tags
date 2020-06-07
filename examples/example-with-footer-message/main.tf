module "datadog_labels" {
    source                  = "git::git@github.com:msaavedra91/tf-tags-main-test.git?ref=1.0.0"
    environment             = var.env_name
    productName             = var.productName
    platformName            = var.platformName
    infrastructure_vcs_repo = var.scm_url
}