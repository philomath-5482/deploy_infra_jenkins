resource "aws_instance" "first-instance" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"
  count = 2

  network_interface {
    network_interface_id = aws_network_interface.First_nic.id
    device_index         = 0
  }


  tags = {
    Name = "Server ${count.index}"
  }
}
