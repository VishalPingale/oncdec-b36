
# create vpc
resource "aws_vpc" "vnet" {
  cidr_block = "192.168.0.0/16"
  tags = {
    Name = "vpc-tf"
  }
}

# create subnet
resource "aws_subnet" "pub" {
  vpc_id                  = aws_vpc.vnet.id
  cidr_block              = "192.168.0.0/22"
  availability_zone       = "ap-southeast-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet"
  }
}

#create internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vnet.id
  tags = {
    Name = "igw-vpc-tf"
  }
}

# create route table and attach igw
resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.vnet.id
  tags = {
    Name = "RT-Public"
  }

  route {
    gateway_id = aws_internet_gateway.igw.id
    cidr_block = "0.0.0.0/0"
  }
}
# attach subnet to route table
resource "aws_route_table_association" "rta" {
  route_table_id = aws_route_table.rt.id
  subnet_id      = aws_subnet.pub.id
}



