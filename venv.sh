
venv() {
  if [ "$1" = "clean" ]; then
    [ -n "$VIRTUAL_ENV" ] && deactivate
    rm -rf .venv
    echo "Virtual environment removed."
    return
  fi

  local python_version="${1:-3}"
  [ ! -d .venv ] && python${python_version} -m venv .venv && echo "Created venv with Python ${python_version}."

  echo "Activating virtual environment..."
  source .venv/bin/activate

  if [ -f pyproject.toml ]; then
    echo "Installing dependencies from pyproject.toml..."
    pip install --quiet .
  elif [ -f requirements.txt ]; then
    echo "Installing dependencies from requirements.txt..."
    pip install --quiet --requirement requirements.txt
  fi
}
