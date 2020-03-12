setup:
	python3 -m venv ~/.capstone
	source ~/.capstone/bin/activate

install:
	pip install --upgrade pip &&\
		pip install --trusted-host=pypi.python.org --trusted-host=pypi.org --trusted-host=files.pythonhosted.org -r requirements.txt

lint:
	pylint app.py
