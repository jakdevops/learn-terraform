variable "ami"{
   default = "ami-03265a0778a880afb"
}

variable "security_groups"{
  default = "sg-0da802b753384d70d"
}

variable "instance_type"{
    default = "t3.micro"
}

variable "zone_id"{
    default = "Z0557403EQNT3AXTONNB"
}

variable "components" {
    default = {
    frontend = { name = "frontend-dev" }
    catalogue = { name = "catalogue-dev" }
    mongodb = { name = "mongodb-dev" }
    user = { name = "user-dev" }
    redis = { name = "redis-dev" }
    cart = { name = "cart-dev" }
    mysql = { name = "mysql-dev" }
    shipping = { name = "shipping-dev" }
    rabbitmq = { name = "rabbitmq-dev" }
    payment = { name = "payment-dev" }
    }
  }


resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = lookup(each.value, "name", null)
  }

resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = "$(lookup(each.value, "name", null)}jakdevops.online"
  type    = "A"
  ttl     = 30
  records = [lookup(lookup(aws_instance.instance, each.key, null), "private_ip", null) ]
}

output "instance" {
value = aws_instance.instance
}