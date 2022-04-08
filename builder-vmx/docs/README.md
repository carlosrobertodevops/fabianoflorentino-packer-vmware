# **builder-vmx**

## **Usage:**

* ### **Recommendations**

```shell
export PKR_VAR_ssh_username=<username>
export PKR_VAR_ssh_password=<password>
```

* ### **Help**

```shell
# Validate if you in the same directory with the makefile
echo $PWD

# This help and make options only works if you are in the same directory with the makefile
make help

help            Show this help
validate        Validate the hcl files
all             Build all Virtual Machines on VMware
builder-iso     Build a Virtual Machine with ISO Builder
builder-vmx     Build a Virtual Machine with VMX Builder
```

* ### **Build all**

```shell
# Build new all virtual machine
make all
```

* ### **Build virtual machine**

```shell
# Build new virtual machine with Builder VMX
make builder-vmx
