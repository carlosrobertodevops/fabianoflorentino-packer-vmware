.DEFAULT_GOAL := help

.PHONY: help
help: ## Show this help
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2, $$3, $$4, $$5}'

.PHONY: validate
validate: ## Validate the hcl files
	@packer validate .

.PHONY: build
all: ## Build all Virtual Machines on VMware
	@packer build .

.PHONY: builder-iso
builder-iso: ## Build a Virtual Machine with ISO Builder
	@packer build --only vmware-iso.centos --var-file=./builder-iso.pkrvars.hcl .

.PHONY: builder-vmx
builder-iso: ## Build a Virtual Machine with VMX Builder
	@packer build --only vmware-vmx.centos --var-file=./builder-vmx.pkrvars.hcl .