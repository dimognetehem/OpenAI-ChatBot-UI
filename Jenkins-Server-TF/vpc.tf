# vpc.tf
resource "aws_vpc" "jenkins_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "jenkins-vpc"
  }
}

resource "aws_internet_gateway" "jenkins_igw" {
  vpc_id = aws_vpc.jenkins_vpc.id

  tags = {
    Name = "jenkins-igw"
  }
}

resource "aws_subnet" "jenkins_subnet_1" {
  vpc_id            = aws_vpc.jenkins_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-2a"

  tags = {
    Name = "jenkins-subnet-1"
  }
}

resource "aws_subnet" "jenkins_subnet_2" {
  vpc_id            = aws_vpc.jenkins_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-2b"

  tags = {
    Name = "jenkins-subnet-2"
  }
}

resource "aws_route_table" "jenkins_rt" {
  vpc_id = aws_vpc.jenkins_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.jenkins_igw.id
  }

  tags = {
    Name = "jenkins-rt"
  }
}

resource "aws_route_table_association" "jenkins_rta_1" {
  subnet_id      = aws_subnet.jenkins_subnet_1.id
  route_table_id = aws_route_table.jenkins_rt.id
}

resource "aws_route_table_association" "jenkins_rta_2" {
  subnet_id      = aws_subnet.jenkins_subnet_2.id
  route_table_id = aws_route_table.jenkins_rt.id
}
