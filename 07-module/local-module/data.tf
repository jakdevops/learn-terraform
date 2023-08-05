data "aws_ami" "ami" {
   most_recent = true
   name_regex      = "Centos-8-DevOps-Practice"
   owners          = ["621241008916"]
   }

   output "ami" {
     value = data.aws_ami.ami
     }

   resource "aws_instance" "instance" {
   ami     = data.aws_ami.ami.id
   instance_type = var.instance_type
   vpc_security_group_ids = [ "sg-0da802b753384d70d" ]
   }

variable "instance_type" {}