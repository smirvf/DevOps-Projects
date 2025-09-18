output "ec2_instance_ami_id" {
  value       = aws_instance.awsImport.ami
  description = "EC2 Instance AMI ID for eu-north-1."
}
