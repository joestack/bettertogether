output "Bastionhost_public_IP" {
  value = "ssh ${var.ssh_user}@${aws_instance.bastionhost.public_ip}"
}

output "Bastionhost_DNS" {
  value = aws_route53_record.bastionhost.name
}

output "ELB_public_DNS" {
  value = "${aws_route53_record.elb.name}.${var.dns_domain}"
}

output "Inventory" {
  value = data.template_file.ansible_skeleton.rendered
}

output "Inventory_json" {
  value = jsonencode(data.template_file.ansible_skeleton.rendered)
}

output "web_node_ips" {
  value = aws_instance.web_nodes.*.public_ip
}

output "web_node_ips_json" {
  value = jsonencode(aws_instance.web_nodes.*.public_ip)
}


# output "ELB_AWS_internal_DNS" {
#   value = aws_elb.web-elb.dns_name
# }

