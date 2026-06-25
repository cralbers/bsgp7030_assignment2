# AI Generation Prompts

This folder was built with Cursor Pro. The prompts below are the user requests used to generate the files here.

## Input data (not generated)

- `regression_data.csv` — provided as input data for the regression examples (`YearsExperience`, `Salary`).

---

## Prompt 1: Notebook project plan

> Working within the ai subfoler and given the ai/@assignment2/ai/regression_data.csv file, plan a project that will generae jupyter notebooks, one in python and one in R, that import and read the csv, create a scatter plot of the data, fit a linear regression model, overlay the regression line onto he scatter plot, evauate the model's performance and save the notebooks as .ipynb and .html files. Do this without referencing the files present in the assignment2/manual folder

**Generated or planned files:**

- `linear_regression_python.ipynb`
- `linear_regression_r.ipynb`
- `linear_regression_python.html`
- `linear_regression_r.html`
- `export_notebooks.sh`

---

## Prompt 2: Switch to conda

> change the plan to use a conda enc invstead of a venv

**Updated plan:** replace `.venv` with a conda environment defined in `environment.yml`.

---

## Prompt 3: Implement conda setup

> do this

**Generated or updated files:**

- `environment.yml` — conda env `assignment2-ai` with Python, Jupyter, scikit-learn, and R packages
- `export_notebooks.sh` — updated to run `nbconvert` using the conda env
- Removed obsolete `.venv/` directory
- Re-executed notebooks and regenerated `.ipynb` / `.html` outputs

---

## Prompt 4: CLI scripts plan

> using the jupyter noteboks in the ai folder, generate executable python and r scripts that take three arguments- filename, x-column and y-column so that the linear regression analysis can be run on any given .csv file. the executable files should export the final regression plot into the ai folder as .png files named "linear_regression_output_{lang}.png"

**Planned files:**

- `linear_regression_python.py`
- `linear_regression_r.r`
- `linear_regression_output_python.png` (generated at runtime)
- `linear_regression_output_r.png` (generated at runtime)

---

## Prompt 5: Implement CLI scripts

> Implement the plan as specified, it is attached for your reference. Do NOT edit the plan file itself.

**Generated files:**

- `linear_regression_python.py` — CLI script: `python linear_regression_python.py <FILENAME> <X_COL> <Y_COL>`
- `linear_regression_r.r` — CLI script: `Rscript linear_regression_r.r <FILENAME> <X_COL> <Y_COL>`

Both scripts print model metrics to the terminal and save regression plots to this folder as:

- `linear_regression_output_python.png`
- `linear_regression_output_r.png`

---

## Example commands

**Notebooks (conda env):**

```bash
cd assignment2/ai
conda activate assignment2-ai
./export_notebooks.sh
```

**CLI scripts:**

```bash
python linear_regression_python.py regression_data.csv YearsExperience Salary
Rscript linear_regression_r.r regression_data.csv YearsExperience Salary
```
