# Nu Html Checker поддерживает только amd64 образы.
validate-src:
	docker run -it --rm -v `pwd`/src:/web --platform linux/amd64 ghcr.io/validator/validator:23.4.11 \
		vnu --skip-non-html --also-check-css --also-check-svg /web

serve-src:
	python3 -m http.server -d src
