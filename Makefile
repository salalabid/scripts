.PHONY: install test run docker

install:
	python -m venv .venv && . .venv/bin/activate && pip install -r requirements.txt

test:
	pytest -q

run:
	python -m src

docker:
	docker build -t my_project .