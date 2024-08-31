output "access_key" {
  value = aws_iam_access_key.obsidian.id
}

output "access_secret" {
  value     = aws_iam_access_key.obsidian.secret
  sensitive = true
}

output "bucket" {
    value = aws_s3_bucket.obsidian-bucket.bucket
}