resource "aws_instance" "task2" {
  #count = 10
  ami           = "ami-067f5c3d5a99edc80"
  instance_type = "t2.large"
  associate_public_ip_address = "true"
  # key_name      = "${aws_key_pair.MyMac.key_name}"
  user_data     = "${file("userdata.sh")}"
  vpc_security_group_ids = ["${aws_security_group.allow_ssh.id}"]
  availability_zone = "us-west-2a"


    tags = {
       ami           = "ami-067f5c3d5a99edc80"
  instance_type = "t2.large"
        Name = "DevOps"
        Team = "DevOps"
        Created_by = "Mustafa"
    }

}

