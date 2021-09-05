source "vmware-iso" "centos" {
  headless              = var.headless
  iso_url               = var.iso_url
  iso_checksum          = var.iso_checksum
  version               = var.version
  guest_os_type         = var.guest_os_type
  vm_name               = var.vm_name
  snapshot_name         = var.snapshot_name
  tools_upload_flavor   = var.tools_upload_flavor
  shutdown_command      = var.shutdown_command
  
  # Hardware configuration
  cpus                  = var.cpus
  cores                 = var.cores
  memory                = var.memory
  network               = var.network
  sound                 = var.sound
  usb                   = var.usb
  
  # Disk configuration
  disk_size             = var.disk_size
  disk_type_id          = var.disk_type_id
  disk_adapter_type     = var.disk_adapter_type
  vmdk_name             = var.vmdk_name
  
  # Optional SSH fields
  ssh_username          = var.ssh_username
  ssh_password          = var.ssh_password
  ssh_timeout           = var.ssh_timeout
  
  # Output configuration
  output_directory      = "${var.output_directory}/${var.vm_name}"
}

build {
  sources = [
    "sources.vmware-iso.centos"
  ]
  provisioner "shell" {
      execute_command = "echo \"$HOSTNAME - Update System\""
      scripts = var.scripts_to_run
  }

}