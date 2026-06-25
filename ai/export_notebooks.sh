#!/usr/bin/env bash
# Export linear regression notebooks to executed .ipynb and .html files.
#
# Python deps: pip install -r requirements.txt
# R deps (one-time): install.packages(c("ggplot2", "IRkernel")); IRkernel::installspec()
set -euo pipefail
cd "$(dirname "$0")"

jupyter nbconvert --to notebook --execute linear_regression_python.ipynb \
  --output linear_regression_python.ipynb
jupyter nbconvert --to html linear_regression_python.ipynb

jupyter nbconvert --to notebook --execute linear_regression_r.ipynb \
  --output linear_regression_r.ipynb
jupyter nbconvert --to html linear_regression_r.ipynb
