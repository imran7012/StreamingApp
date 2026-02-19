resource "aws_instance" "web" {
  ami = var.ami
  instance_type = "t3.micro"
  subnet_id = var.public_subnet
  vpc_security_group_ids = [var.web_sg]
  key_name = var.key_name
  iam_instance_profile = var.instance_profile

  tags = { Name = "travelmemory-web" }
}

resource "aws_instance" "db" {
  ami = var.ami
  instance_type = "t3.micro"
  subnet_id = var.private_subnet
  vpc_security_group_ids = [var.db_sg]
  key_name = var.key_name

  tags = { Name = "travelmemory-db" }
}
