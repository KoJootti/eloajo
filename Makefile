

.PHONY: *


clean:
	@echo "Cleaning..."
	@rm -rf public

build: clean
	@echo "Building..."
	@hugo --minify
