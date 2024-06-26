provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "RHEL1" {
  count         = 1
  ami           = "ami-0fe630eb857a6ec83"
  instance_type = "t2.medium"
  key_name      = "Laptop Keypair"
  tags = {
    Name = "RHEL"
  }
}
resource "aws_instance" "Ubuntu" {

  count         = 1
  ami           = "ami-0fe630eb857a6ec83"
  instance_type = "t2.medium"
  key_name      = "Laptop Keypair"

  tags = {
    Name = "Ubuntu_Server"
  }
}
