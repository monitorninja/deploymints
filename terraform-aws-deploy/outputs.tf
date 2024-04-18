# Description: This file contains the outputs for the main.tf file
# Author:      Frank Aaron Smith
# Date:        4/26/2024
# Version:     1.0

# ./outputs.tf

# Public IP address of the EC2 instance
output "public_ip" {
  value = aws_instance.conan_the_deployer.public_ip
}

# Public SSH key pair name
output "key_name" {
  value = aws_key_pair.conan_generated_public_key.key_name
}

output "ssh_command" {
  value = "ssh -i ${local_file.conan_private_key_file.filename} ubuntu@${aws_instance.conan_the_deployer.public_ip}"
}
