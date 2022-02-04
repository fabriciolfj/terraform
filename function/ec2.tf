resource "aws_instance" "server" {
  count = local.instance_number < 1 ? 0 : local.instance_number

  ami = var.instance_ami

  instance_type = lookup(var.instance_type, var.env)

  tags = merge(
    local.common_tags,
    {
      Project = "Curso AWS com terraform"
      Env     = format("%s", var.env)
      Name    = format("instance %d", count.index + 1)
    }
  )
}