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

.PHONY: centos
centos: ## Build a Virtual Machine with CentOS guest OS
	@packer build --only vmware-iso.centos --var-file=./centos7.pkrvars.hcl .