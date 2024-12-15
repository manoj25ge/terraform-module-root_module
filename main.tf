provider "aws" {
  region = "us-east-2"
  
}

resource "aws_instance" "example" {
  ami = "ami-0c80e2b6ccb9ad6d1"
  instance_type = "t2.micro"
  subnet_id = "subnet-036ee632fb899ed4e"
  key_name = "tf-test"

  tags = {
    Name = "MyEC2-Inst"
  }
  
}
