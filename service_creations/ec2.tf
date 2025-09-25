
resource "aws_instance" "myec2" {
  ami           = "ami-085925f297f89fce1" 
  instance_type = "t3.micro"
  count         = 3  #mention no of ec2 required                        

  tags = {
    Name = "myec2-${count.index + 1}"
  }
}


