data "local_file" "secrets" {
  filename = "./.terraform_secret.yaml"
}

# Master ssh Key
data "local_file" "master_key_pub" {
  filename = "./keys/master/master_key.pub"
}