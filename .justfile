set shell := ["bash", "-uc"]

venv := ".venv"

# set up the virtual environment
setup-venv: ## Setup the virtualenv
  @echo 'setup venv'
  python -m venv {{venv}}

# install build requirements
setup: setup-venv
  @echo 'setup build dependencies'
  pip install maturin

# build python bindings
develop:
  maturin develop --extras=devel $(MATURIN_EXTRA_ARGS)

release:
  maturin release --extras=devel $(MATURIN_EXTRA_ARGS)
