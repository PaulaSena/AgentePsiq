## Teoria

[Cliente servidor.png]

Fluxo de dados no Django:

[diagrama fluxo.png]


## Configurações iniciais

Primeiro devemos criar o ambiente virtual:

```python
# Criar
	# Linux
		python3 -m venv venv
	# Windows
		python -m venv venv
```

Após a criação do venv vamos ativa-lo:

```python
#Ativar
	# Linux
		source venv/bin/activate
	# Windows
		venv\Scripts\Activate

# Caso algum comando retorne um erro de permissão execute o código e tente novamente:

Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
```

- requirements.txt

	```python
	aiohappyeyeballs==2.6.1
	aiohttp==3.12.15
	aiosignal==1.4.0
	annotated-types==0.7.0
	anyio==4.11.0
	arrow==1.3.0
	asgiref==3.9.2
	attrs==25.3.0
	blessed==1.22.0
	certifi==2025.8.3
	charset-normalizer==3.4.3
	dataclasses-json==0.6.7
	distro==1.9.0
	Django==5.2.7
	django-picklefield==3.3
	django-q2==1.8.0
	faiss-cpu==1.12.0
	frozenlist==1.7.0
	greenlet==3.2.4
	h11==0.16.0
	httpcore==1.0.9
	httpx==0.28.1
	httpx-sse==0.4.1
	idna==3.10
	jiter==0.11.0
	jsonpatch==1.33
	jsonpointer==3.0.0
	langchain==0.3.27
	langchain-community==0.3.30
	langchain-core==0.3.77
	langchain-openai==0.3.34
	langchain-text-splitters==0.3.11
	langsmith==0.4.31
	marshmallow==3.26.1
	multidict==6.6.4
	mypy_extensions==1.1.0
	numpy==2.3.3
	openai==2.0.1
	orjson==3.11.3
	packaging==25.0
	pillow==11.3.0
	propcache==0.3.2
	pydantic==2.11.9
	pydantic-settings==2.11.0
	pydantic_core==2.33.2
	python-dateutil==2.9.0.post0
	python-decouple==3.8
	python-dotenv==1.1.1
	PyYAML==6.0.3
	redis==3.5.3
	regex==2025.9.18
	requests==2.32.5
	requests-toolbelt==1.0.0
	six==1.17.0
	sniffio==1.3.1
	SQLAlchemy==2.0.43
	sqlparse==0.5.3
	tenacity==9.1.2
	tiktoken==0.11.0
	tqdm==4.67.1
	types-python-dateutil==2.9.0.20250822
	typing-inspect==0.9.0
	typing-inspection==0.4.2
	typing_extensions==4.15.0
	urllib3==2.5.0
	wcwidth==0.2.14
	yarl==1.20.1
	zstandard==0.25.0
	#pip install -r requirements.txt


	```

```python
pip install -r requirements.txt
```

Vamos criar o nosso projeto Django:

```python
django-admin startproject core .
```

- .gitignore
	```bash
	# Byte-compiled / optimized / DLL files
	__pycache__/
	*.py[codz]
	*$py.class

	# C extensions
	*.so

	# Distribution / packaging
	.Python
	build/
	develop-eggs/
	dist/
	downloads/
	eggs/
	.eggs/
	lib/
	lib64/
	parts/
	sdist/
	var/
	wheels/
	share/python-wheels/
	*.egg-info/
	.installed.cfg
	*.egg
	MANIFEST

	# PyInstaller
	#   Usually these files are written by a python script from a template
	#   before PyInstaller builds the exe, so as to inject date/other infos into it.
	*.manifest
	*.spec

	# Installer logs
	pip-log.txt
	pip-delete-this-directory.txt

	# Unit test / coverage reports
	htmlcov/
	.tox/
	.nox/
	.coverage
	.coverage.*
	.cache
	nosetests.xml
	coverage.xml
	*.cover
	*.py.cover
	.hypothesis/
	.pytest_cache/
	cover/

	# Translations
	*.mo
	*.pot

	# Django stuff:
	*.log
	local_settings.py
	db.sqlite3
	db.sqlite3-journal

	# Flask stuff:
	instance/
	.webassets-cache

	# Scrapy stuff:
	.scrapy

	# Sphinx documentation
	docs/_build/

	# PyBuilder
	.pybuilder/
	target/

	# Jupyter Notebook
	.ipynb_checkpoints

	# IPython
	profile_default/
	ipython_config.py

	# pyenv
	#   For a library or package, you might want to ignore these files since the code is
	#   intended to run in multiple environments; otherwise, check them in:
	# .python-version

	# pipenv
	#   According to pypa/pipenv#598, it is recommended to include Pipfile.lock in version control.
	#   However, in case of collaboration, if having platform-specific dependencies or dependencies
	#   having no cross-platform support, pipenv may install dependencies that don't work, or not
	#   install all needed dependencies.
	# Pipfile.lock

	# UV
	#   Similar to Pipfile.lock, it is generally recommended to include uv.lock in version control.
	#   This is especially recommended for binary packages to ensure reproducibility, and is more
	#   commonly ignored for libraries.
	# uv.lock

	# poetry
	#   Similar to Pipfile.lock, it is generally recommended to include poetry.lock in version control.
	#   This is especially recommended for binary packages to ensure reproducibility, and is more
	#   commonly ignored for libraries.
	#   https://python-poetry.org/docs/basic-usage/#commit-your-poetrylock-file-to-version-control
	# poetry.lock
	# poetry.toml

	# pdm
	#   Similar to Pipfile.lock, it is generally recommended to include pdm.lock in version control.
	#   pdm recommends including project-wide configuration in pdm.toml, but excluding .pdm-python.
	#   https://pdm-project.org/en/latest/usage/project/#working-with-version-control
	# pdm.lock
	# pdm.toml
	.pdm-python
	.pdm-build/

	# pixi
	#   Similar to Pipfile.lock, it is generally recommended to include pixi.lock in version control.
	# pixi.lock
	#   Pixi creates a virtual environment in the .pixi directory, just like venv module creates one
	#   in the .venv directory. It is recommended not to include this directory in version control.
	.pixi

	# PEP 582; used by e.g. github.com/David-OConnor/pyflow and github.com/pdm-project/pdm
	__pypackages__/

	# Celery stuff
	celerybeat-schedule
	celerybeat.pid

	# Redis
	*.rdb
	*.aof
	*.pid

	# RabbitMQ
	mnesia/
	rabbitmq/
	rabbitmq-data/

	# ActiveMQ
	activemq-data/

	# SageMath parsed files
	*.sage.py

	# Environments
	.env
	.envrc
	.venv
	env/
	venv/
	ENV/
	env.bak/
	venv.bak/

	# Spyder project settings
	.spyderproject
	.spyproject

	# Rope project settings
	.ropeproject

	# mkdocs documentation
	/site

	# mypy
	.mypy_cache/
	.dmypy.json
	dmypy.json

	# Pyre type checker
	.pyre/

	# pytype static type analyzer
	.pytype/

	# Cython debug symbols
	cython_debug/

	# PyCharm
	#   JetBrains specific template is maintained in a separate JetBrains.gitignore that can
	#   be found at https://github.com/github/gitignore/blob/main/Global/JetBrains.gitignore
	#   and can be added to the global gitignore or merged into this file.  For a more nuclear
	#   option (not recommended) you can uncomment the following to ignore the entire idea folder.
	# .idea/

	# Abstra
	#   Abstra is an AI-powered process automation framework.
	#   Ignore directories containing user credentials, local state, and settings.
	#   Learn more at https://abstra.io/docs
	.abstra/

	# Visual Studio Code
	#   Visual Studio Code specific template is maintained in a separate VisualStudioCode.gitignore 
	#   that can be found at https://github.com/github/gitignore/blob/main/Global/VisualStudioCode.gitignore
	#   and can be added to the global gitignore or merged into this file. However, if you prefer, 
	#   you could uncomment the following to ignore the entire vscode folder
	# .vscode/

	# Ruff stuff:
	.ruff_cache/

	# PyPI configuration file
	.pypirc

	# Marimo
	marimo/_static/
	marimo/_lsp/
	__marimo__/

	# Streamlit
	.streamlit/secrets.toml
	```