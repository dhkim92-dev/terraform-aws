resource "aws_key_pair" "main" {
    public_key = file(var.file_path)
    key_name = var.key_name

    tags = {
        description = "key pair"
    }
}