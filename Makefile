setup:
	python3 -m venv ~/.dockerproj

install:
	pip install --upgrade pip && pip install -r requirements.txt

test:
	python -m pytest -vv --cov=myrepolib tests/*.py
	python -m pytest --nbval notebook.ipynb

validate-circleci:
	circleci config process .circleci/config.yml

run-circleci-local:
	circleci local execute
   
lint:
	hadolint ./Dockerfile --ignore DL3013 --ignore DL3042
	pylint --disable=R,C app.py

all: install lint test
