data "aws_ami" "example" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "^myami-\\d{3}"
  owners           = ["self"]
}

output "ami" {
  data = data.aws_ami.ami
  }
