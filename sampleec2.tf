provider "aws" {
              profile = "default"
              region  = "us-east-1"
              access_key = "AKIA3CBLDPGKFLYIQM4T"
              secret_key = "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"
}

resource "aws_instance" "ec301" {
              ami ="ami-087c17d1fe0178315"
              instance_type ="t2.micro"
              #security_groups = var.security_group_name
              key_name = "ec2instance"
              tags = { ec2_create = "instance1" }
              }


resource "aws_default_vpc" "main" {
              tags = { Name = "main" }
        }
resource "aws_ebs_volume" "vol" {
              availability_zone = "us-east-1a"
              size              = 8
              tags = { key_name = "ec2instance" }
}
resource "time_sleep" "wait_30_seconds" {
  depends_on = [aws_instance.ec301]

  create_duration = "60s"
}


