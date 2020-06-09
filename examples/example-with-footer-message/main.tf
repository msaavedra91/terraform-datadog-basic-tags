module "datadog_tags" {
    source                  = "git::git@github.com:msaavedra91/tf-tags-main-test.git?ref=2.0.0"
    environment             = var.env_name
    productName             = var.productName
    platformName            = var.platformName
    vcs_repo                = var.scm_url
}