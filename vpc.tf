resource "aws_vpc" "First_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "First_vpc"
  }
}


# Create Subnet
resource "aws_subnet" "First_subnet" {
  vpc_id     = aws_vpc.First_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Frist_subnet"
  }
}

# Create Network Inetrface
resource "aws_network_interface" "First_nic" {
  subnet_id   = aws_subnet.First_subnet.id

  tags = {
    Name = "Primary-nic"
  }
}
