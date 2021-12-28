variable "instance_type" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "t2.micro"
  sensitive = true
}

variable "role_name" {
  description = "Value of the Name tag for the IAM role"
  type        = string
  default     = "ExampleAppServerInstance"
  sensitive = true
}

variable "policy_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
  sensitive = true
}

variable "security_group_name" {
  description = "Value of the Security group name"
  type        = string
  default     = "ExampleAppServerInstance"
}


#data "aws_iam_role" "role_name" {
 # name = var.role_name

#}
#resource "aws_instance" "web" {
 # ami                    = "ami-a0cfeed8"
  #instance_type          = "t2.micro"
  #user_data              = file("init-script.sh")
#+ vpc_security_group_ids = [aws_security_group.web-sg.id]

  #tags = {
    #Name = random_pet.name.id
 # }
#}
