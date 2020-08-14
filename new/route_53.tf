resource "aws_route53_record" "www" {
  zone_id = "Z0556863226EB9VROVI53"
  name    = "www.tokmustafa.com"
  type    = "A"
  ttl     = "30"
  records = ["${aws_instance.task2.public_ip}"]
}

