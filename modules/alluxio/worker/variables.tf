variable "name" {}

variable "namespace" {
  default = null
}

variable "image" {
  default = "alluxio/alluxio:2.0.0-RC3"
}

variable "overrides" {
  default = {}
}

variable "extra_alluxio_java_opts" {
  default = ""
}

variable "alluxio_master_hostname" {}
variable "alluxio_master_port" {}