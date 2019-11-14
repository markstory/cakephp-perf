.PHONY: test

URL_PATH=cakephp-perf

# Utility target for checking required parameters
guard-%:
	@if [ "$($*)" = '' ]; then \
		echo "Missing required $* variable."; \
		exit 1; \
	fi;

make_db: guard-VERSION
	cd $(VERSION) && if [ -f 'db.sqlite' ]; then rm db.sqlite; fi
	cd $(VERSION) && sqlite3 db.sqlite < ../db.sql

test: make_db
	@echo "Warming cache"
	@curl -XGET "http://localhost/$(URL_PATH)/$(VERSION)/articles" > /dev/null
	@echo '-------------------------------------------'
	@echo "Hitting /"
	siege -r 500 -c 1 --no-parser -b "http://localhost/$(URL_PATH)/$(VERSION)/"
	@echo '-------------------------------------------'
	@echo "Hitting /articles - list page"
	siege -r 500 -c 1 --no-parser -b "http://localhost/$(URL_PATH)/$(VERSION)/articles"
	@echo '-------------------------------------------'
	@echo "Hitting /articles/add - form"
	siege -r 500 -c 1 --no-parser -b "http://localhost/$(URL_PATH)/$(VERSION)/articles/add"
	@echo '-------------------------------------------'
