variable "container_name" {
  description = "Value of the name for the Docker container"
  # basic types include string, number and bool
  type    = string
  default = "ExampleNginxContainer"

  validation {
    condition     = substr(var.container_name, 0, 4) == "acme"
    error_message = "All container names must begin with the word acme"
  }
}
