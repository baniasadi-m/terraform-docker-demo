# Terraform-docker-demo

This repository is a way for install docker and running mysql container with random root password
by terraform docker provider in your local system.

### What is Terraform?
Terraform is an open-source infrastructure as code software tool that provides a consistent CLI workflow to manage hundreds of cloud services. Terraform codifies cloud APIs into declarative configuration files.

### How to install Terraform in (Debian/Ubuntu):
Just download binary file  from  https://www.terraform.io/downloads and run bellow commands

```bash
unzip terraform_1.1.5_linux_amd64.zip
sudo install terraform /usr/local/bin
```

now terraform installed.

### Get started:

To deploy these codes on your infrastructure you should to run bellow commands:

```bash
git clone https://github.com/baniasadi-m/terraform-docker-demo.git
cd terraform-docker-demo
terraform init
terraform plan 
terraform apply
```

now you can see mysql docker  image downloaded and mysql container is running.

when you want to remove the this infra just run bellow command:

```bash
terraform destroy
```

