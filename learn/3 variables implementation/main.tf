# Create an EC2 instance using the input variables
resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
}