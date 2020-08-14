resource "aws_key_pair" "MyMac" {
  key_name   = "MyMac-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
