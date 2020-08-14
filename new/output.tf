output "IP" {
  value = "${aws_instance.task2.public_ip}"
}

output "ID" {
  value = "${aws_instance.task2.id}"
}

output "PIP" {
  value = "${aws_instance.task2.private_ip}"
}

output "KEY" {
  value = "${aws_instance.task2.key_name}"
}

output "ARN" {
  value = "${aws_instance.task2.arn}"
}
