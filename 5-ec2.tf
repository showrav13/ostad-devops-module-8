resource "aws_instance" "ostad_instance" {
  ami                         = "ami-084568db4383264d4" 
  instance_type               = "t2.micro"
  subnet_id                   = data.aws_subnet.default.id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]

  root_block_device {
    volume_size = 20
    volume_type = "gp3"
  }

  tags = {
    Name = "TerraformOstad"
  }
}