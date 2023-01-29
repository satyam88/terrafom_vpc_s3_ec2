output "instance_private_ip_addr" {
  value = aws_instance.myec2[*].private_ip
}


output "instance_public_ip_addr" {
  value = aws_instance.myec2[*].public_ip
}