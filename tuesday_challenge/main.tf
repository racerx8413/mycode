terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.22.0"
    }
  }
}

provider "docker" {}
provider "random" {}

# available from random.random_pet
resource "random_pet" "nginx" {
  length = 3
  separator = "_"
}


resource "docker_image" "nginx" {
  name         = "nginx:1.19.6"
  keep_locally = true       // keep image after "destroy"
}


resource "docker_container" "nginx" {
  count = 4
  image = docker_image.nginx.image_id
  name  = "nginx-${random_pet.nginx.id}_${count.index}"
  # name = "nginx-hoppy-frog-0"

}

