module "rds" {
    source = "../MODULES/rds"
    rds_name = "ziyotek"
    rds_engine = "postgres"
}