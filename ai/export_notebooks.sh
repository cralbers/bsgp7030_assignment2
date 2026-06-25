#!/bin/bash
set -eo pipefail
cd "$(dirname "$0")"

ENV_DIR="$(conda info --envs | awk '/assignment2-ai/ {print $NF; exit}')"
if [[ -z "${ENV_DIR}" || ! -d "${ENV_DIR}" ]]; then
  echo "conda env assignment2-ai not found; run: conda env create -f environment.yml" >&2
  exit 1
fi
export PATH="${ENV_DIR}/bin:${PATH}"

jupyter nbconvert --to notebook --execute linear_regression_python.ipynb \
  --output linear_regression_python.ipynb
jupyter nbconvert --to html linear_regression_python.ipynb \
  --output linear_regression_python.html

jupyter nbconvert --to notebook --execute linear_regression_r.ipynb \
  --output linear_regression_r.ipynb
jupyter nbconvert --to html linear_regression_r.ipynb \
  --output linear_regression_r.html
