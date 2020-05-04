SHELL := bash
NAME := product
PUBLIC := public
RESOURCES := resources
THEME_DIR := hugo/themes/hugo-geekdoc
THEME_VERSION ?= v0.2.1

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

.PHONY: theme-clean
theme-clean:
	rm -rf $(THEME_DIR)

.PHONY: theme-sync
theme-sync:
	mkdir -p $(THEME_DIR); \
  curl -sSL https://github.com/xoxys/hugo-geekdoc/releases/download/$(THEME_VERSION)/hugo-geekdoc.tar.gz | tar -xz -C $(THEME_DIR)/ --strip-components=1

.PHONY: theme
theme: theme-clean theme-sync