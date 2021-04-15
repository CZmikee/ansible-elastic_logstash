resource "google_compute_instance" "vm_instance" {
  for_each = var.VMs
  machine_type = var.VMtype
  name = each.key
  zone = "europe-${each.value}"

  labels = var.labels

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-8"
    }
  }

  // Local SSD disk
  scratch_disk {
//    count = 2 # Silly terraform in current version cannot do count on subresources
    interface = "NVME"
  }

  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network = "default"
    ##empty conf makes ephemeral public IP, commented out None
    #    access_config{
    #    }
  }
}
