variable "env" {}

variable "aws_region" {
  type = string
  default = "us-east-2"
}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-066157edddaec5e49"

  #validation {
    #condition     = length(var.instance_ami) > 4 && substr(var.instance_ami, 0, 4) == "ami-"
    #error_message = "A instancia ami não é valida, tem que iniciar com ami-"
  #}
}

variable "instance_number" {

  type = object({
    dev  = number
    prod = number
  })

  description = "Numero de instancias"

  default = {
    dev  = 1
    prod = 2
  }
}

variable "instance_type" {

  type = object({
    dev  = string
    prod = string
  })

  description = ""

  default = {
    dev  = "t3.micro"
    prod = "t3.medium"
  }

}