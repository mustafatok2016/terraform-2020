provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "tim" {
  name = "tim"
}


resource "aws_iam_user" "bob" {
  name = "bob"
}

resource "aws_iam_user" "ben" {
  name = "ben"
}


resource "aws_iam_group" "developer" {
  name = "developer"
  path = "/"
}



resource "aws_iam_group" "management" {
  name = "management"
  path = "/"
}


resource "aws_iam_group_membership" "developer_team" {
  name = "developer-group-membership"

  users = [
    "${aws_iam_user.tim.name}","${aws_iam_user.bob.name}","${aws_iam_user.ben.name}"
  ]

  group = "${aws_iam_group.developer.name}"
}


resource "aws_iam_group_membership" "developers_team" {
  name = "developers-group-membership"

  users = [
    "${aws_iam_user.ben.name}",
  ]

  group = "${aws_iam_group.management.name}"
}
