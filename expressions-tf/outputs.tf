## Output value definitions

output "nginx_hosts" {
          # we have 4 instances we are trying to loop across (docker_container.nginx)
  value = [for container in docker_container.nginx : { name : container.name, host : "${container.ports[0].ip}:${container.ports[0].external}" }]
}

