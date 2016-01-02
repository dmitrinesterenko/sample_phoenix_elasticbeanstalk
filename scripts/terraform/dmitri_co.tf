provider "aws" {
  # deploy
  # access_key = "AKIAJOPYW56TQ6WXH5CA"
  # secret_key = "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"
  # root
  access_key = "AKIAJIQWPGS35E674J7Q"
  secret_key = "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"
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags {
    Name = "main"
  }
}

resource "aws_instance" "dmitri_co" {
  ami = "ami-60b6c60a"
  instance_type = "t2.micro"
  subnet_id = "subnet-134ec02e"
  tags {
    Environment = "Production"
    Product = "Main Website"
  }
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.dmitri_co.id}"
  vpc = true
}

# resource "aws_subnet" "main" {
#
#}
