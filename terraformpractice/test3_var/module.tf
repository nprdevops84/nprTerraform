
variable "localfile_content" {
  type = string
}

variable "localfile_path" {
  type = string
}


resource "local_file" "test3_file" {
  content  = var.localfile_content
  filename = var.localfile_path
}

