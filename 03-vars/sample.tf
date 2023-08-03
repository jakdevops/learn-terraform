variable "fruit_name"{
   default = "apple"
}

output "furit_name"{
    value = var.fruit_name
    }

#list varaiables
 variable "fruits"{
     default = [
      "apple"
      "guva"
 ]
     default = [ "apple","guva" ]
     }

   #map variable
   variable "fruit_stock"{
     default = {
       apple = 100
       guva = 210
   }
  }

  #map variable, map of maps
  variable "fruit_stock_with_price" {
    default = {
      apple = {
         stock =  100
         price = 1
       }
       guva = {
         stock = 202
         price = 1
        }
       }
      }

  #how to access a list variable, list index start from zero
   output "fruits_first" {
      value = var.fruits[0]
      }

      output "fruits_second"{
         value = var.fruits[1]
      }
   # how to access map variable

   output "fruit_stock_apple"{
    value = var.fruit_stock["apple"]
   }
