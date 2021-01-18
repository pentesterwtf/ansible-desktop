# minimal terraform file
# used to test if the libvirt provider was installed sucessfully
terraform {
  required_version = ">= 0.14.0"
}

provider "libvirt" {
  uri = "qemu://system"
}
