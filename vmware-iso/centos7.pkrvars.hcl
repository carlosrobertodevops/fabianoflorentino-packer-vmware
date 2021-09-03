# Source configuration
iso_url       = "/Users/florentino/Applications/iso/linux/custom/centos7-custom-img-disk70gb.iso"
iso_checksum  = "file:/Users/florentino/Applications/iso/linux/custom/centos7-custom-img-disk70gb.sum"
version       = "12"
guest_os_type = "centos7"
vm_name       = "centos7-base-vm.v4"
snapshot_name = "initial-state"
headless      = true

# Hardware configuration
cpus    = "2"
cores   = "2"
memory  = "2048"
network = "nat"
sound   = false
usb     = false

# Disk configuration
disk_size             = "100000"
disk_type_id          = "0"
disk_adapter_type     = "sata"
vmdk_name             = "centos.vmdk"

# SSH configuration
ssh_username  = "root"
ssh_password  = "123qwe"

# Build configuration
scripts_to_run = [
    "scripts/yum.sh",
]

output_directory = "/Users/florentino/Virtual Machines.localized"