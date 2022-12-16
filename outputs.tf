output "docker_id_1" {
  value = docker_container.web.hostname
}
output "docker_id_2" {
  value = docker_container.web2.hostname
}
