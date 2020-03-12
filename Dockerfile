FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    ansible \
    git

# Install Packer

RUN wget https://releases.hashicorp.com/packer/1.5.4/packer_1.5.4_linux_amd64.zip -O /tmp/packer.zip
RUN unzip /tmp/packer.zip -d /tmp
RUN mv /tmp/packer /usr/bin

# Install Terraform

RUN wget https://releases.hashicorp.com/terraform/0.12.23/terraform_0.12.23_linux_amd64.zip -O /tmp/terraform.zip
RUN unzip /tmp/terraform.zip -d /tmp
RUN mv /tmp/terraform /usr/bin

WORKDIR /home/iac
ENTRYPOINT ["/bin/bash"]