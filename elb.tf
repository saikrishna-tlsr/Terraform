### Creating ELB
resource "aws_elb" "example" {
  name = "terraform-asg-example"
  security_groups = ["${aws_security_group.elb.id}"]
  availability_zones = ["us-east-1a", "us-east-1b"]
  health_check {
    healthy_threshold = 2
    unhealthy_threshold = 2
    timeout = 3
    interval = 30
    target = "HTTP:8080/"
  }
  listener {
    lb_port = 80
    lb_protocol = "http"
    instance_port = "8080"
    instance_protocol = "http"
  }
}

resource "aws_elb_attachment" "baz" {
  elb      = "${aws_elb.terraform-asg-example.id}"
  instance = "${aws_instance.wb.id}"
}
