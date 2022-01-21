data "template_file" "json" {
  template = file("template.json.tpl")

  #vai ler o arquivo acima, e substituir pelos dados abaixo dinamicamente
  vars = {
    age    = 37
    eye    = "green"
    name   = "fabricio"
    gender = "male"
  }
}

#converte o arquivo para outro tipo
#path.module retorna o caminho aonde esta sendo executado e uma palavra reservada
data "archive_file" "json" {
  type        = local.file_ext
  output_path = "${path.module}/files/${local.object_name}.${local.file_ext}"

  source {
    content  = data.template_file.json.rendered
    filename = "${local.object_name}.json"
  }
}