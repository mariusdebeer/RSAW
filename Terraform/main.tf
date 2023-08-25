provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region     = "${var.region}"
}
resource "aws_vpc" "vpc1" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "Web_VPC1"
    }
}

resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_id}"
    count = "1"
    instance_type = "${var.instance_type}"
 #   key_name = "root_key01"
    tags = {
        Name = "Webserver1"
    }
} 
