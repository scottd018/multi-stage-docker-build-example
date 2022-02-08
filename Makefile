.PHONY: slim multi

single:
	@docker build . -t test:single -f Dockerfile.single

single-remove:
	@docker build . -t test:single-remove -f Dockerfile.single-remove

multi:
	@docker build . -t test:multi -f Dockerfile.multi