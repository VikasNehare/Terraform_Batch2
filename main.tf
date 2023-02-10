resource "aws_iam_user" "one" {
  name ="Demo_user1"
  tags = {
    Name = "VickyNehare"
    purpose = "Terraform User Creation"
    enddate = "09/02/2023"
  }
}


resource "aws_iam_user" "two" {
  name ="Demo_user2"
  tags = {
    Name = "RahulBajaj"
    purpose = "Terraform User Creation"
    enddate = "09/02/2023"
  }
}


resource "aws_iam_user" "three" {
  name ="Demo_user3"
  tags = {
    Name = "KrishnaPanchari"
    purpose = "Terraform User Creation"
    enddate = "09/02/2023"
  }
}

resource "aws_iam_group_membership" "Dev" {

  name = "members"

  users = [
    aws_iam_user.one.name,
    aws_iam_user.two.name,
    aws_iam_user.three.name
  ]
  group = aws_iam_group.trainee.name
}
resource "aws_iam_group" "trainee" {
  name = "test_group"
  
}
resource "aws_s3_bucket" "b" {
  bucket = "terraform-sdkifjbngh-bucket"
tags = {
  Name = "tf-bucket"
  Environment = "Dev"  
      }
}
