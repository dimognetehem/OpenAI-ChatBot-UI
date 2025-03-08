# ec2.tf

resource "aws_instance" "Jenkins-server" {
  ami                         = "ami-05716d7e60b53d380" # Amazon Linux 2 Kernel 5.10 AMI 2.0.20250305.0 x86_64 HVM gp2
  instance_type               = "t2.large"
  subnet_id                   = aws_subnet.jenkins_subnet_1.id
  associate_public_ip_address = true
  iam_instance_profile        = aws_iam_instance_profile.jenkins_instance_profile.name
  key_name                    = "myfirstkeypair" # Remplace par le nom réel de ta clé AWS

  security_groups = [aws_security_group.jenkins_sg.id]

  user_data = file("${path.module}/../scripts/install_build_tools.sh")

  tags = {
    Name = "Jenkins-server"
  }

  # Dépendance explicite : attendre la création du Security Group
  depends_on = [aws_security_group.jenkins_sg]

}
