# ec2.tf

resource "aws_instance" "Jenkins-server" {
  ami                         = "ami-0884d2865dbe9de4b" # Canonical, Ubuntu, 22.04, amd64 jammy image
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
