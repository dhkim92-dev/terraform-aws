module "ec2-keypair" {
    source = "./key_pairs"
    file_path = "/Users/terrapin/.ssh/terraform-keypair.pub"
    key_name = "ec2-bastion-keypair"
}

module "ec2-bastion" {
    source = "./ec2"
    instance_type = "t2.micro"
    instance_name = "ec2-bastion"
    key_name = module.ec2-keypair.key_name
}