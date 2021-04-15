#Define list of VMs and places
variable "VMs" {
  default = {
    elastic-test-1 = "west1-b"
    elastic-test-2 = "west1-d"
    elastic-test-3 = "west1-c"
  }
}

#Define VM size
variable "VMtype" {
  default = "n1-standard-2"
}

#Define lable (used by Ansible for grouping)
variable "labels" {
  default = {
    "example" = "test"
  }
}

variable "json_file_path" {
  description = "Path to the JSON service file which is used to create the resources"
}

variable "project_id" {
  description = "Project ID under which the VMs will be created"
}