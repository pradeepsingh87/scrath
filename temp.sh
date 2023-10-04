{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "fsx:ListTagsForResource",
        "fsx:DescribeFileSystems",
        "fsx:ListFiles",
        "fsx:DescribeBackups",
        "fsx:CreateBackup",
        "fsx:DeleteBackup"
      ],
      "Resource": "*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:DeleteObject"
      ],
      "Resource": "arn:aws:s3:::your-archive-bucket/*"
    }
  ]
}
