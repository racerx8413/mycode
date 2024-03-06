
/* Terraform block */
terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

provider "null" {
}

locals {
   names = ["Lancelot", "Arthur", "Robin", "Zoot"]
}

resource "null_resource" "names" {
  for_each = toset(local.names) 
  triggers = {
    name = each.value
  }

  provisioner "local-exec" {
    command = "echo ${each.value} > holy.txt"
  }
}

resource "time_sleep" "wait_10_seconds" {
  depends_on = [null_resource.names]
  create_duration = "10s"   // pause this long when a creation occurs
  destroy_duration = "10s"  // pause this long when a destroy occurs
}


#resource "null_resource" "exec" {
#  provisioner "local-exec" {
#    command = "echo ${null_resource.names.name}} > holy.txt"
#  }
#}


#}
