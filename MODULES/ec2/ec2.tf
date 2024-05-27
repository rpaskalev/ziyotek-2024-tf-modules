# #this resource will create a separate ec2 instance in th edefault VPC. It will error is a default VPC doesnt exist. 

resource "aws_instance" "web" {
  ami = data.aws_ami.example.image_id #var.ami_id

  subnet_id                   = var.vpc_subnet_for_ec2
  associate_public_ip_address = true
            
  user_data = file("../MODULES/ec2/efs.sh") #("userdata.sh")

  # iam_instance_profile = aws_iam_instance_profile.s3_profile.id
  ebs_optimized        = var.ebs_optimized

  key_name      = "sam-key-terraform" 
  instance_type = var.instance_type

  # Security group must be declared in the network_interface_id block if we are adding that parameter.
  vpc_security_group_ids = var.vpc_security_group
  tags                   = {
    Name = var.environment
}
}
