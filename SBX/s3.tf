module "s3" {
    source = "../MODULES/s3"
    environment = "sbx"
}

module "s3_data" {
    source = "../MODULES/s3"
    environment = "sbx"
}