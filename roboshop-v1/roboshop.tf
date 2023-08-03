resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0da802b753384d70d" ]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = Z0557403EQNT3AXTONNB
  name    = "frontend-dev.jakdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private-ip]
}


resource "aws_instance" "mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0da802b753384d70d" ]

  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = Z0557403EQNT3AXTONNB
  name    = "mongodb-dev.jakdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private-ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0da802b753384d70d" ]

  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = Z0557403EQNT3AXTONNB
  name    = "catalogue-dev.jakdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private-ip]
}

resource "aws_instance" "redis" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0da802b753384d70d" ]

  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = Z0557403EQNT3AXTONNB
  name    = "redis-dev.jakdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private-ip]
}

resource "aws_instance" "user" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0da802b753384d70d" ]

  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = Z0557403EQNT3AXTONNB
  name    = "user-dev.jakdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private-ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0da802b753384d70d" ]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = Z0557403EQNT3AXTONNB
  name    = "mysql-dev.jakdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private-ip]
}

resource "aws_instance" "shipping" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0da802b753384d70d" ]

  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = Z0557403EQNT3AXTONNB
  name    = "shipping-dev.jakdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private-ip]
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0da802b753384d70d" ]

  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = Z0557403EQNT3AXTONNB
  name    = "rabbitmq-dev.jakdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private-ip]
}

resource "aws_instance" "payment" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0da802b753384d70d" ]

  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = Z0557403EQNT3AXTONNB
  name    = "payment-dev.jakdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private-ip]
}

resource "aws_instance" "cart" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0da802b753384d70d" ]

  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = Z0557403EQNT3AXTONNB
  name    = "cart-dev.jakdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private-ip]
}
