
variable "security_groups" {
  default = "sg-0da802b753384d70d"
}

variable "zone_id" {
    default = "Z0557403EQNT3AXTONNB"
    }

  variable "components" {
    default =
      frontend = {
         name = "frontend"
         instance_type = "t3.micro"
         }
         cart = {
          name = "cart"
          instance_type = "t3.micro"
          }
        }
     }