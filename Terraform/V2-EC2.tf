provider "aws"{
    region = "us-east-1"
}

resource "aws_instance" "demo-server"{
    ami = "ami-07860a2d7eb515d9a"
    instance_type = "t3.micro"
    key_name = "dpp"
}

resource "aws_security_group" "demo-sg" {
    name        = "demo-security-group"
    description = "Security group for demo server"

    ingress {
        description = "SSH access"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    egress {
        description = "Allow SSH"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    tags = {
        Name = "demo-security-group"
    }

}

