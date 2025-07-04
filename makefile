# Check to see if we use ash, in Alpine images, Or default to Bash
SHELL_PATH = /bin/ash
SHELL = $(if $(wildcard $(SHELL_PATH)),/bin/ash,/bin/bash)

run:
	go run apis/services/sales/main.go | go run apis/tooling/logfmt/main.go

tidy:
	go mod tidy
	go mod vendor
