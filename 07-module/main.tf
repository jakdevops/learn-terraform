module "test" {
  source = "./local-module"
  }

output "test"{
  value = data.aws_ami_ids.ami
}

