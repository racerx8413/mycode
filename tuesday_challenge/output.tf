output "nginx_hosts" {
  value = [for container in docker_container.nginx : { name : container.name }]
}
