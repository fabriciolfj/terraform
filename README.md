# terraform
## Commandos do terraform
- Documentação: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources

#### Iniciar o uso do terraform
- tfenv use

#### Ver os comandos
- terraform -h
- terraform init -h (ver os subcomandos do init)

#### Etapas para construção
- terraform init -> terraform plan -> terraform apply
- terraform validate -> valida minha configuração no terraform
- terraform fmt -> formata nosso codigo
- terraform plan -out="nome.out" -> quando precisamos alterar, modificamos o main e executamos esse comando, ele nos mostra o que vai ser modificado
- terraform apply "nome.out" -> dando apply no arquivo
- terraform apply -auto-approve -> aprova sem perguntar

#### Processo de atualização de recursos
- quando modificamos alguma tag, não há a necessidade de destruir o recurso
- quando modificamos o nome do recurso, há a necessidade de destruir o recurso

#### Variaveis
- terraform -var="aws_profile=test" -> podemos passar em tempo de execução no terraform ou utilizar o arquivo variables
- terraform -var-file="prod.tfvars" -> posso utilizar os arquivos com a extenção tfvars e trabalhar parâmetros por ambiente
- procedência: variáveis de ambiente, arquivo terraform.tfvars e demais arquivos
- se deu apply apontando para um arquivo tfvars, o destroy faça o mesmo:
```
terraform apply -var-file="prod.ftvars"
terraform destroy -var-file="prod.ftvars"
```

#### Interpolação
- uma expressão que concatena strings com variáveis ou funções

#### Variavies locais
- local value -> equivalente a variável dentro de uma função em java por exemplo

#### OutPuts values
- quando queremos mostrar algum na tela
- montando um módulo

#### Arquivo tfstate
- Arquivo que fica registrado tudo que o terraform fez no provedor
- Para ver o conteúdo, podemos executar terraform show

#### Console terraform
- para ter acesso ao console, podemos executar terraform console
- o console é utíl para ver os detalhes do recurso, exemplo: nome.this.nome do atributo ou nomedorecurso.nomedoobjeto.nomedoatributo

#### Import terraform
- tem por objetivo importar um recurso que não foi criado, ou seja, não gerenciado pelo terraform para o terraform
- exemplo: terraform import aws_s3_bucket.nome nomedorecursonaawsnaogerenciado

#### Remote state
- terraform guarda os arquivos em um armazenamento remoto (ex: aws s3)
- data: pega dados da conta
- resource: envia dados para a conta
- Executando um apply com versionamento: 
```
terraform init -backend=true -backend-config="backend.hcl"
```