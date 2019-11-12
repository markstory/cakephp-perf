.PHONY: test server

PORT=8765

# Utility target for checking required parameters
guard-%:
	@if [ "$($*)" = '' ]; then \
		echo "Missing required $* variable."; \
		exit 1; \
	fi;

make_db: guard-VERSION
	cd $(VERSION) && sqlite3 db.sqlite < ../db.sql

server: guard-VERSION make_db
	cd $(VERSION) && bin/cake server --port=$(PORT)

test:
	@echo "Warming cache"
	@curl -XGET "http://localhost:$(PORT)/articles" > /dev/null
	@echo '-------------------------------------------'
	@echo "Hitting /"
	siege -r 100 -c 1 "http://localhost:$(PORT)/"
	@echo '-------------------------------------------'
	@echo "Hitting /articles - list page"
	siege -r 100 -c 1 "http://localhost:$(PORT)/articles"
	@echo '-------------------------------------------'
	@echo "Hitting /articles/add - form"
	siege -r 100 -c 1 "http://localhost:$(PORT)/articles/add"
	@echo '-------------------------------------------'
