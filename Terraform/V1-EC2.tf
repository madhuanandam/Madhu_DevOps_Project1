provider "aws"{
    region = "us-east-1"
}

resource "aws_instance" "demo-server"{
    ami = "ami-07860a2d7eb515d9a"
    instance_type = "t3.micro"
    key_name = "dpp"
}
