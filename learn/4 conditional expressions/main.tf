# This is similar to an if-else condition:
# condition ? true_value : false_value

# Example 1: Create instance only if needed
resource "aws_instance" "example" {
  count = var.create_instance ? 1 : 0

  ami           = "ami-XXXXXXXXXXXXXXXXX"
  instance_type = "t2.micro"
}

# Don’t worry too much about the examples
# Just try to understand how the condition works for now.
# The rest will make sense later.

# Example 2 & 3 need to be inside a resource block to work properly
resource "aws_security_group" "example" {
  name        = "example-sg"
  description = "Example security group"

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    # Example 2: Change CIDR based on environment
    # If production → use production CIDR
    # Else → use dev CIDR
    cidr_blocks = var.environment == "production" ? ["10.0.1.0/24"] : ["10.0.2.0/24"]
  }

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    # Example 3: Enable or disable SSH access
    # true → allow SSH from anywhere
    # false → block all
    cidr_blocks = var.enable_ssh ? ["0.0.0.0/0"] : []
  }
}
