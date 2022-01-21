locals {

  common_tags = {

    "Owber" = "Fabricio"
    "Year"  = "2022"

  }

  file_ext = "zip"

  object_name = "meu-arquivo"

  #procurar o numero de instancia com base no valor da env
  instance_number = lookup(var.instance_number, var.env)

}