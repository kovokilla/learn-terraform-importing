# Terraform configuration

resource "docker_container" "web" {
  command = [
    "nginx",
    "-g",
    "daemon off;",
  ]
  cpu_shares = 0
  dns        = []
  dns_opts   = []
  dns_search = []
  entrypoint = [
    "/docker-entrypoint.sh",
  ]
  remove_volumes    = true
  start             = true
  logs              = false
  must_run          = true
  env               = []
  image             = "sha256:6b3e1257976b8a6fd83636599d64df8dd87d008ce2e5d5eb721c11aa8e338862"
  group_add         = []
  hostname          = "23874509ff0c"
  init              = false
  ipc_mode          = "private"
  #links             = []
  log_driver        = "json-file"
  log_opts          = {}
  max_retry_count   = 0
  memory            = 0
  memory_swap       = 0
  name              = "hashicorp-learn"
  network_mode      = "default"
  privileged        = false
  publish_all_ports = false
  read_only         = false
  restart           = "no"
  rm                = false
  security_opts     = []
  shm_size          = 64
  stdin_open        = false
  storage_opts      = {}
  sysctls           = {}
  tmpfs             = {}
  tty               = false

  ports {
    external = 8080
    internal = 80
    ip       = "0.0.0.0"
    protocol = "tcp"
  }
}

resource "docker_container" "web2" {
  command = [
    "nginx",
    "-g",
    "daemon off;",
  ]
  cpu_shares = 0
  dns        = []
  dns_opts   = []
  dns_search = []
  entrypoint = [
    "/docker-entrypoint.sh",
  ]
  remove_volumes    = true
  start             = true
  logs              = false
  must_run          = true
  env               = []
  image             = "sha256:6b3e1257976b8a6fd83636599d64df8dd87d008ce2e5d5eb721c11aa8e338862"
  group_add         = []
  #hostname          = "23874509ff0c"
  init              = false
  ipc_mode          = "private"
  #links             = []
  log_driver        = "json-file"
  log_opts          = {}
  max_retry_count   = 0
  memory            = 0
  memory_swap       = 0
  name              = "hashicorp-learn-2"
  network_mode      = "default"
  privileged        = false
  publish_all_ports = false
  read_only         = false
  restart           = "no"
  rm                = false
  security_opts     = []
  shm_size          = 64
  stdin_open        = false
  storage_opts      = {}
  sysctls           = {}
  tmpfs             = {}
  tty               = false

  ports {
    external = 8081
    internal = 80
    ip       = "0.0.0.0"
    protocol = "tcp"
  }
}
