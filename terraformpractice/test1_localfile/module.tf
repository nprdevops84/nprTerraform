
resource "local_file" "test1_file" {
  content = "test1 created with terraform"
  filename = "test1.txt"
}
