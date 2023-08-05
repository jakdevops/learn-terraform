data "aws_ami_ids" "ami" {
   name_regex      = "centos"
   owners          = [ "621241008916"]
   }

   output "ami" {
     value = data.aws_ami_ids.ami
     }