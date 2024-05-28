module "ec2" {
    source = "../MODULES/ec2"
 
    environment = "prod"
    instance_type = "t3.micro"
 
    vpc_subnet_for_ec2 = [module.vpc.public_subnet_1]
 
    vpc_security_group = [module.vpc.vpc_security_group_id]
}
