terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.22.0"
    }
  }
}


resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "z_example"
  ports {
    internal = 80
    external = 8000
  }
}


provider "docker" {}


resource "docker_image" "nginx" {
  name         = "nginx:1.19.6"
  keep_locally = true       // keep image after "destroy"
}
