lint:
	docker run --rm -i hadolint/hadolint < Dockerfile
	tidy -q -e templates/*.html
