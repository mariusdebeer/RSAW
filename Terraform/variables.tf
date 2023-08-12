variable "access_key" {
        type = string
        description     = "Access key to AWS console"
}
variable "secret_key" {
        type = string
        description     = "Secret key to AWS console"
}
variable "instance_type" {
        type = string
        description     = "Which EC2 instance we want to deploy today."
        default         = "t2.micro"
}
variable "ami_id" {
        description     = "The AMI to use"
        default         = "ami-053b0d53c279acc90"
}
variable "region" {
        description     = "The region to deploy in"
        default         = "us-east-1"
}