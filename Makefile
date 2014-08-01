.PHONY: test

URL_PATH=/cakephp-perf

# Utility target for checking required parameters
guard-%:
	@if [ "$($*)" = '' ]; then \
		echo "Missing required $* variable."; \
		exit 1; \
	fi;

test: guard-VERSION
	@echo "Warming cache"
	@curl -XGET "http://localhost$(URL_PATH)/$(VERSION)/articles" > /dev/null
	@echo '-------------------------------------------'
	@echo "Hitting /"
	siege -r 100 -c 5 "http://localhost/$(URL_PATH)/$(VERSION)/"
	@echo '-------------------------------------------'
	@echo "Hitting /articles - list page"
	siege -r 100 -c 5 "http://localhost$(URL_PATH)/$(VERSION)/articles"
	@echo '-------------------------------------------'
	@echo "Hitting /articles/add - form"
	siege -r 100 -c 5 "http://localhost$(URL_PATH)/$(VERSION)/articles/add"
	@echo '-------------------------------------------'
