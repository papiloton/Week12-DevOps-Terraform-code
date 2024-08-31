
resource "aws_instance" "web" {
  ami                                  = "ami-02c21308fed24a8ab"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1d"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0                     
  key_name                             = "papiloton"
  monitoring                           = false
  security_groups                      = ["launch-wizard-4"]
  subnet_id                            = "subnet-0488ec4b21d4a82ec"
  tags = {
    Name = "created by terraform"
  }
 
}
