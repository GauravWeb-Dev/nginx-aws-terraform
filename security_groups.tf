resource "aws_security_group" "nginx-sg" {
    vpc_id = aws_vpc.my_vpc.id

    #Inbound rules
    ingress = {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_block = ["0.0.0.0.0/0"]
    }

    #Outbond rules
   egress = {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_block = ["0.0.0.0.0/0"]
    }

    tags = {
      Name = "nginx-sg"
    }
}