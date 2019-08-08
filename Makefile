.PHONY: production docs test tests
production:
	# Have to init submodules if they don't already exist
	test -d firefly/static/d3/.git || git submodule update --init

docs:
	$(MAKE) -C docs html

tests: test

test:
	tox

clean:
	find . -name "*.pyc" -delete
	find . -name "__pycache__" -delete

# shimon
