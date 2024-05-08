
resource "aws_instance" "jenkins_instance" {
  ami           = var.aws_ami_id
  instance_type = var.aws_instance_type
  subnet_id = "subnet-0b0e8ded7388a288d"
  key_name = "devops-test-2"

  ebs_block_device {
    device_name = "/dev/xvda"
    volume_size = 20
    volume_type = "gp3"
    delete_on_termination = true
  }
  
  tags = {
    Name = "jenkins-instance"
    Environment = var.env
  }


}
