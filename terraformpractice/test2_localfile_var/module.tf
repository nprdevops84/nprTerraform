variable "localfile_content" {}
variable "localfile_path" {}

resource "local_file" "test1_file" {
  content = "${var.localfile_content}
  filename ="${var.localfile_path}
}
