variable "fruits" {
  default = [ "apple", "bannana"]
}

output "fruit" {
  value = element(var.fruits, 2)
  }


  variable "fruit_with_stock" {
    default = {
        apple =1000
        }
      }

    output "fruit_stock"{
      value = try(var.fruit_with_stock["bannana"],0)
      }