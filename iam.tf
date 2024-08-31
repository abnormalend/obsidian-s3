resource "aws_iam_user" "obsidian" {
  name = "obsidian"
}

resource "aws_iam_access_key" "obsidian" {
  user = aws_iam_user.obsidian.id
}

data "aws_iam_policy_document" "s3-bucket" {
  statement {
    effect  = "Allow"
    actions = ["s3:*"]
    resources = [
      aws_s3_bucket.obsidian-bucket.bucket,
      "${aws_s3_bucket.obsidian-bucket.bucket}/*"
    ]
  }
}

resource "aws_iam_user_policy" "s3-bucket" {
  user   = aws_iam_user.obsidian.id
  policy = data.aws_iam_policy_document.s3-bucket.json
}
