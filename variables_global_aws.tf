variable "region" {}

variable "aws_profile" {
  default = "default"
}

variable "name" {}

variable "project" {}

variable "environment" {}

variable "amis" {
  type = "map"

  default = {
    eu-central-1 = "ami-bf2ba8d0" // Amazon Linux AMI (HVM / 64-bit)
    eu-central-1-ecs = "ami-05991b6a" // Amazon AMI ECS optimized old
    eu-central-1-ecs-rancher = "ami-b0dd69df" // Rancher AMI ECS optimized
    eu-central-1-rancheros-ami = "ami-4c22b123" // RancherOS AMI https://github.com/rancher/os/blob/master/README.md/#user-content-amazon
  }
}

variable "usernames" {
  type = "map"

  default = {
    eu-central-1 = "ec2-user" // Amazon Linux AMI
    eu-central-1-ecs-rancher = "rancher" // RancherOS
  }
}

variable "run_task" {
  default = 0
}

variable "global_ssh_pub_keys" {
  type = "map"
  default = {
    "ane" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDkPoefK4tM//jC037/5pb1N84ZNaBQM9VmDa7ugBqo8wplt7tulUL7bqtNfv0wVvuXByAgP5ioed64HA6m9wevFP07pSWTDFSmGoo2lBApnkOL7cZ00/rAHcjAnhx9cgWoXZPYGK2IoR+Fh3zo6eECgOUy9Lx6I/HXOPytX9mgJ9nexZCKk0VI3NgtlEIuVPSkxYchPYbG1JqQ1HSOtLm1oRsBzCsYJDDWMLg//2Qg2qzSI1S3ZFYLM0hNzlbGxBlHimBH1gDhXm7CwSyMy7YMvUwh3k00reta6zKcD1CRiyoHt8M3wljgJxQVNcFAmKFkpMADHg5AJ+6y9ui/pqcVVmuNbgR861EX1k6rPzcvAWj04bfWtbnABg/DmOrpoVD/I99oqgIXeeZ/0sWlBIcPBEIFzsMyysr97vP3w7VTemFdFE8cRQXsuibfC0ppcH0SJYB6SnYgkt3czekCXrJq9ymAMsPDARM4lxQuSa4+k9aQFGpobL/SA7k9IypoTV/mnC3sksTxDDD+WW6DI8k8PC5+wD+Bl9d2P54jzqU8MLHlJmR0e2FsfW2A8arxM+bBGQ5mhTaVOyxVSG1G5EizhZL+GjHWOI5W5YY5FnkkRAwQ8+wEIfcNap1ZPihotxhlnYcJnl7EUFMhabZE8gzXNck6Iomx5gNWSw8PG5XIFQ=="
  }
}
