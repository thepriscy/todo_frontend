
resource "aws_key_pair" "my_keypair" {
    key_name = var.key_name
    public_key = var.public_key
}

resource "aws_instance" "ec2-instance" {
    ami = var.ami
    instance_type = var.instance_type
    security_groups = var.security_group
    associate_public_ip_address = true
    subnet_id = var.subnet_id
    key_name = aws_key_pair.my_keypair.key_name
}

