variable "instance_name" {
    type = string
    description = "생성할 EC2 인스턴스에 할당될 이름"
}

variable "instance_type" {
    type = string
    description = "생성할 EC2의 인스턴스 타입"
    default = "t2.micro"
}

variable "ami" {
    type = string
    description = "EC2 인스턴스에 사용할 이미지"
    default = "ami-04cebc8d6c4f297a3"
}

variable "key_name" {
    type = string
    description = "사용할 Key pair 명"
}
