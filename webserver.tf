# Define webserver inside the public subnet
resource "aws_instance" "wb" {
   ami  = "${var.ami}"
   count = “${var.count}”
   instance_type = "t1.micro"
   key_name = "sai"
   subnet_id = "${aws_subnet.public-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.sgweb.id}"]
   associate_public_ip_address = true
   source_dest_check = false
   user_data = "${file("install.sh")}"

  tags {
    Name = "“${format(“wb-%03d”, count.index + 1)}”"
  }
}
