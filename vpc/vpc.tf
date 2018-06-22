data "template_file" "demo" {

  template = <<EOF
  Input variable: $${input_variable}
  Module value: $${module_variable}
  Global variable: $${global_input_variable}
EOF

  vars {
    module_variable = "DEMO-2"
    input_variable = "${var.input_variable}"
    global_input_variable = "${var.global_input_variable}"
  }
}


resource "null_resource" "demo" {
  triggers = {
      demo_trigger = "${data.template_file.demo.rendered}"
  }

  provisioner "local-exec" {
    command = "( echo DEMO1: ${var.input_variable} )"
  }
}

output "vpc_id" {
  value = "${data.template_file.demo.rendered}"
}
