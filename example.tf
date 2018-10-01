provider "aws" {
  access_key = "AKIAJAVANUJXRZTXIRJA"
  secret_key = "upeqvPHKFi26UEBVp1162n3ymRnvxWCViMW0yWzH"
  region     = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-063d7038eec55d449"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}

resource "aws_ssm_parameter" "secret" {
  name = "kalyans-first-secret"
  description = "The parameter description"
  type = "SecureString"
  value = "Pinbilikipiyape1£"

  tags {
    environment = "kalyan"
  }
}