output "access_key" {
  value = aws_iam_access_key.obsidian.id
}

output "access_secret" {
  value     = aws_iam_access_key.obsidian.secret
  sensitive = true
}