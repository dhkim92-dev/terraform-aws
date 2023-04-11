output "public_ip" {
    value = aws_instance.ec2.public_ip
}

output "key_pair_name" {
    value = aws_instance.ec2.key_name
}