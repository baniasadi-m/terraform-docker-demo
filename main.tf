resource "random_password" "mypassword" {
    length = 12
    
}
variable "db_name" {
    type = string
}

resource "docker_image" "mysql" {
    name = "mysql:latest"

}

resource "docker_container" "mysql" {
    image = docker_image.mysql.latest
    name = "dws_mysql"
    must_run = false
    env = [
     "MYSQL_ROOT_PASSWORD = ${random_password.mypassword.result}" ,
     "MYSQL_DATABASE = ${var.db_name}"     
    ]

}

output "env_vars" {
    description = "ENV"
    value = docker_container.mysql.env
    sensitive = true
}

output "mypassword" {
    description = "root db password"
    value = random_password.mypassword
    sensitive = true
}

output "container_id" {
    description = "container ID output"
    value = docker_container.mysql.id
}

output "container_ip" {
    description = "container ip address output"
    value = docker_container.mysql.ip_address
}

output "container_image" {
    description = "container image output"
    value = docker_container.mysql.image
}

output "container_exit_code" {
    description = "container exit code output"
    value = docker_container.mysql.exit_code
}