# **vmware-iso**

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
centos          Build a Virtual Machine with CentOS guest OS
```

* ### **Build all**

```shell
# Build new all virtual machine
make all
```

* ### **Build specific CentOS virtual machine**

```shell
# Build new CentOS virtual machine
make centos
```
