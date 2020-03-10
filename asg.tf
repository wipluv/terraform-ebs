resource "aws_autoscaling_group" "default" {
  name                      = "terraform-ebs"
  max_size                  = 1
  min_size                  = 1
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 1
  force_delete              = true
  launch_configuration      = "${aws_launch_configuration.default.name}"
  vpc_zone_identifier       = ["subnet-fb8428b6"]
 # target_group_arns         = ["${aws_lb_target_group.default.arn}"]
}
