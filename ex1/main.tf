# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = "ASIA3J7HLVMMLZ5J43E6"
  secret_key = "Yut281Lph2XXdCzqrrt8btKa8aHBnL1p900WWo1U"
  token = "FwoGZXIvYXdzELr//////////wEaDPzB7AVRhC0UgYT/hCLVAWw7cVelINSu+y/+nqhdE2WrZLAso6RXA8jGHFVOK30ZGDra0GdhYGEbFE8EENQ7Cz5fTn2nSzH0NJ7ZM9I5pry4fW1z+FUxNge9bkNOBgsUZ3WuHTEnjymAEFtLTi1LIuyenwwFl2aMuy47p2I5cooyYZslOfNUUDC5tLDOpllwZh7Hj3AhA0ub/yGFNNchTwjJUXPVa6Ju6OTOsjs6lnpjocLJWZ8D0mhG+AK48OuDy9rsvt0vk3nz7B5Qcx1dGbaPYNZbHhxMAvM9VFmHKaRH1au1UCiuyfGUBjItMuxYdNOWUAhaO8UwmOMiU/pOT8y/W7QFb/NS1uwxLp3bwYnsCUBTwXMcvRuk"
  region = "us-east-1"
}

resource "aws_subnet" "pre_exist_vpc" {
    vpc_id = "vpc-000c8318f89f938b4"
    cidr_block = "172.31.0.0/16"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2

resource "aws_instance" "Udacity_T2" {
  count = "4"
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  tags = {
    name = "Udacity T2"
  }
  subnet_id = "subnet-067310f788732f360"
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4

resource "aws_instance" "Udacity_M4" {
  count = "2"
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "m4.large"
  tags = {
    name = "Udacity M4"
  }
  subnet_id = "subnet-067310f788732f360"
}

