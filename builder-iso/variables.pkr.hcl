# Source configuration
variable "headless" {
  type    = bool
  default = false
}

variable "iso_url" {
  type    = string
  default = "guest-os.img"
}

variable "source_path" {
    type    = string
    default = "/Users/florentino/Virtual Machines.localized"
}

variable "iso_checksum" {
  type    = string
  default = "00f1c5724018733b946e25b5aa6df36ee4b75595c12bb15597987cf4ec373432"
}

variable "version" {
  type    = string
  default = "10"
}

variable "guest_os_type" {
  type    = string
  default = ""
}

variable "vm_name" {
    type    = string
    default = "base-image"
}

variable "snapshot_name" {
    type    = string
    default = "snapshot-1"
}

variable "tools_upload_flavor" {
    default = ""
}

variable "shutdown_command" {
    default = "shutdown -P now"
}


# Hardware configuration
variable "cpus" {
  default = "1"
}

variable "cores" {
  default = "1"
}

variable "memory"{
  default = "512"
}

variable "network" {
  default = "nat"
}

variable "sound" {
  type    = bool
  default = false
}

variable "usb" {
  type    = bool
  default = false
}


# Disk configuration
variable "vmdk_name" {
  default = ""
}

variable "disk_size" {
  default = "40000"
}

variable "disk_additional_size" {
  default = []
}

variable "disk_type_id" {
  default = ""
}

variable "disk_adapter_type" {
  default = "sata"
}


# SSH configuration
variable "ssh_username" {
    type    = string
    default = "packer"
}

variable "ssh_password" {
    type    = string
    default = "packer"
}

variable "ssh_timeout" {
    default = "10m"
}


# Output configuration
variable "output_directory" {
    type    = string
    default = "./"
}


# Build configuration
variable "scripts_to_run" {
    default = [
      "scripts/run.sh"
    ]
}