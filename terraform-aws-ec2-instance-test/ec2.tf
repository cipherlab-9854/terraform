module "ec2" {
  source        = "../terraform-aws-ec2-instance"
  project       = var.project_name
  environment   = var.env
  ami_id        = data.aws_ami.joindevops.id
  sg_ids        = var.sg_ids
  instance_type = "t3.small"
  tags = {
    Name      = "${var.project_name}-${var.env}-${var.component}"
    Component = var.component
  }
}