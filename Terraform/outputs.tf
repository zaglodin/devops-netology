output "AWS_account_ID" {
  value = data.aws_caller_identity.current.account_id
}
output "AWS_user_ID" {
  value = data.aws_caller_identity.current.user_id
}
output "AWS_region" {
  value = aws_instance.web.availability_zone
}
output "Privat_ip" {
  value = aws_instance.web.private_ip
}

output "Net_ID" {
  value = aws_instance.web.subnet_id
}
