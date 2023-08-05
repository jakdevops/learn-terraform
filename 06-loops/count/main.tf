variable "components" {
  default = ["frontend", "mongodb"]
  }

resource "aws_instance" "instance" {
 count = length(var.components)
   ami  = "ami-image"
   instance_type = "t3.small"
    vpc_security_group_ids = [ "security_group_id" ]

    tags =  {
      name = element(var.components,count.index)
      }
    }

#for-each loop

variable "components" {
  default = {
      frontend = { name = "frontend_sg"}
      catalogue = { name = "catalogue_sg"}
      mongodb =  { name = "mongodb_sg"}
     }
   }


resource "aws_security_group"  "allow_tls"  {
 for_each = var.components
 name  = lookup(var.components,each.value["name"], null)
 }