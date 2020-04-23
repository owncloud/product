SHELL := bash
NAME := product
PUBLIC := public
RESOURCES := resources

.PHONY: all
all: docs-build

.PHONY: clean
clean:
	rm -rf $(PUBLIC) $(RESOURCES)

.PHONY: docs-build
docs-build:
	hugo

.PHONY: docs
docs: docs-build

.PHONY: docs-server
docs-server:
	hugo -D server
