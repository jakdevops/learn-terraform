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
         stock =  2100
         price = 1
       }
       guva = {         stock = 202
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


# varialble data types.

 variable "fruit_details"{
   default = {
     apple = {
       stock = 11
       type = "simla"
       for_sale = true
     }
   }
   }

   #variable in a combination of any other string then it needs to be within ${}

   output "fruit_details_apple"
      value =  "apple stock = ${var.fruit_details["apple"].stock} , apple type = ${var.fruit_details["apple"].type}, apple sale status = ${var.fruit_details["apple"].for_sale}"

