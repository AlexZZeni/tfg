############## Terraform #################################
terraform_directory := terraform/

# Copia os arquivos de providers.tf para dentro de cada modulo
terraform-update-common:
	cd ${terraform_directory} && \
		find modules/* -type d -maxdepth 1 -exec cp providers.tf {} \;

# Pre configura o terraform
terraform-init:
	cd ${terraform_directory} && \
		terraform get && \
		terraform init

# Limpa as configurações e os arquivos do terraform
terraform-reboot:
	-rm -r ${terraform_directory}.terraform/
	-rm ${terraform_directory}.terraform.lock.hcl
	-rm ${terraform_directory}terraform.tfstate
	-rm ${terraform_directory}terraform-plugin-proxmox.log
	-rm ${terraform_directory}terraform.tfstate.backup
	-cd ${terraform_directory} && \
		find modules/*  -maxdepth 1 -type d -exec rm {}/providers.tf \; &&\

# Planeja as alterações definidas nos arquivos .tf
terraform-plan:
	cd ${terraform_directory} && \
		terraform plan


# Executa as alterações definidas nos arquivos .tf
terraform-deploy:
	cd ${terraform_directory} && \
		terraform apply -auto-approve

############## Ansible #################################
ansible_directory := ansible/

ansible-pre:
	-rm -r $${HOME}/${ansible_directory}
	cp -r ${ansible_directory} $${HOME}
	chmod 600 $${HOME}/ansible/inventories/keys/master/master_key
	chmod 644 $${HOME}/ansible/inventories/keys/master/master_key.pub

ansible-deploy:
	cd ${ansible_directory} && \
		ansible-playbook bootstrap.yml