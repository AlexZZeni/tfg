
# Criação e Configuração dos Ambientes

Para a criação dos ambientes foi utilizado a ferramenta Terraform e para a configuração dos ambientes foi utilizada a ferramenta Ansible. Os passos para instalação e execução dessas ferramentas encontra-se abaixo.

## Instalação do Terraform

O Terraform está disponível para Windows, Linux e MacOS. Os passos para instalação podem ser encontrado no próprio site da Hashicorp, seguindo [este link](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).

## Instalação do Ansible

O Ansible está disponível para Linux e MacOS. Os passos para instalação podem ser encontrado no próprio site do ansible, seguindo [este link](https://docs.ansible.com/ansible/2.9/installation_guide/intro_installation.html).

## Execução do Terraform

Para executar o Terraform você primeiramente irá acessar o diretório do terraform "**terraform/**".

```bash
cd  terraform
```

Depois será necessário criar o arquivo com os secrets, com o seguinte comando e preencher as variáveis conforme o seu ambiente:

```bash
cp  terraform_secret.yaml.sample  terraform_secret.yaml
```

Para inicializar o terraform executar o seguinte comando:

```bash
terraform  init && terraform  get
```

Para exibir as ações que serão executadas pelo terraform rode o seguinte comando:

```bash
terraform  plan
```

Para executar as ações do terraform rode o seguinte comando:

```bash
terraform  apply  -auto-approve
```

## Execução do Ansible

Para executar o Ansible você primeiramente irá acessar o diretório do ansible "**ansible/**".

```bash
cd  ansible
```

Para executar as ações do ansible rode o seguinte comando:

```bash
ansible-playbook  bootstrap.yml
```

## Referências
