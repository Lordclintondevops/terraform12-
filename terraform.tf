provider "aws" {
    region = "us-east-1"
  #access_key = ""
  #secret_key = ""
}

resource "aws_instance" "demo" {
    ami = "ami-0c101f26f147fa7fd"
    instance_type = "t2.micro"

    tags = {
      name = "kien"
    }
  
}


resource "aws_vpc" "kina" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
  
  tags = {
    name = "kina"
  }

}



