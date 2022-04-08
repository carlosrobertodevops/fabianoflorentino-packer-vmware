# Source configuration
headless            = true
source_path         = "/Users/florentino/Virtual Machines.localized/centos7-iam-v0.1/centos7-iam-v0.1.vmx"
version             = "12"
guest_os_type       = "centos7"
vm_name             = "centos7-vmx-iam-v0.1"
snapshot_name       = "initial-state"
tools_upload_flavor = "linux"
shutdown_command    = "shutdown -P now"

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
ssh_timeout   = "6300s"

# Build configuration
scripts_to_run = [
    "scripts/yum.sh",
]

# Output configuration
output_directory = "/Users/florentino/Virtual Machines.localized"