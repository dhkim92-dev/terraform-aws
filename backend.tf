terraform {
    backend "s3" {
        bucket = "dhkim92-dev-tfstate"
        key = "main/terraform.tfstate"
        region = "ap-northeast-2"
    }
}
