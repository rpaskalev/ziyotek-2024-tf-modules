resource "aws_subnet" "my_subnet_1" {
  vpc_id            = aws_vpc.my_vpc[0].id
  cidr_block        = var.subnet_1_cidr
  availability_zone = "us-east-1a"

  tags = {
    Name = "Public"
    Environment = var.environment
  }
}

resource "aws_subnet" "my_subnet_2" {
  vpc_id            = aws_vpc.my_vpc[0].id
  cidr_block        = var.subnet_2_cidr
  availability_zone = "us-east-1b"

  tags = {
    Name = "Public"
    Environment = var.environment
  }
}

resource "aws_subnet" "my_subnet_3" {
  vpc_id            = aws_vpc.my_vpc[0].id
  cidr_block        = var.subnet_3_cidr
  availability_zone = "us-east-1c"

  tags = {
    Name = "Private"
    Environment = var.environment
  }
}

resource "aws_security_group" "allow_all" {
  name        = "${var.environment}_allow_all"
  description = "Allow ALL inbound traffic in ${var.environment}"
  depends_on = [aws_vpc.my_vpc]
  vpc_id      = aws_vpc.my_vpc[0].id

  ingress {
    description = "All from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}