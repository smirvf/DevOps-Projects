resource "aws_instance" "this" {
  ami                     = var.ami_id
  instance_type           = var.instance_type
}

resource "aws_instance" "awsImport" {
  ami                     = var.ami_id
  instance_type           = var.instance_type
  tags = {
    Name = "TestImport"
  }
}