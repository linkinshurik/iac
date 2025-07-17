resource "aws_instance" "app" {
  ami           = "ami-0c94855ba95c71c99" # Amazon Linux 2
  instance_type = "t3.micro"
  subnet_id     = element(var.subnet_ids, 0)

  tags = {
    Name = "petclinic-ec2"
  }

  associate_public_ip_address = true
}
