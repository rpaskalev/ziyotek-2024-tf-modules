# resource "aws_instance" "web" {
#     ami = lookup(var.amis, var.region, "ami-0eb9d67c52f5c80e5")

#     instance_type = "t2.micro"
# }

# variable "amis" {
#     type = map
#     default = {
#         us-east-2 = "ami-0ca2e925753ca2fb4",
#         us-west-1 = "ami-0a2781a262879e465",
#     }
# }

# variable "region" {
#   default = "us-west-2"
# }