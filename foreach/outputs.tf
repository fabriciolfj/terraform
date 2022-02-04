output "extensions" {
  value = local.file_extensions
}

//[] é uma lista
//{} é iterando sobre um map
output "instance_arns" {
  value = [for k, v in aws_instance.this : v.arn]
}

output "instance_names" {
  value = { for k, v in aws_instance.this : k => v.tags.Name }
}

output "instance_type" {
  value = { for k, v in aws_instance.this : k => v.instance_type }
}

output "extensions_upper" {
  value = local.filex_extensions_upper
}

output "private_ips" {
  value = [for o in local.ips : o.private]
}

output "public_ips" {
  value = local.ips[*].public
}