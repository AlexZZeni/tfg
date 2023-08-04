data "local_file" "secrets" {
  filename = "./.terraform_secret.yaml"
}

data "local_file" "master_key_pub" {
  filename = "./keys/master/master_key.pub"
}