# assignment 2 
# create a linear regression model (python) to model salary based on years of experience
import sys
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression

if len(sys.argv) != 4:
    print("Usage: python linear_regression_python.py <filename> <x_column> <y_column>")
    sys.exit(1)

# Assign function arguments to variable names 
filename = sys.argv[1]
x_col = sys.argv[2]
y_col = sys.argv[3]

# import csv file into pandas df
# fit a linear regression model to the data (salary as a fx of years of experience)
data = pd.read_csv(filename)
model = LinearRegression()
model.fit(data[[x_col]], data[[y_col]])

# evaluate the model's performance
r = model.score(data[[x_col]] ,data[[y_col]]) # calculate the R squared (fit)
print(f'R^2 value for linear regression: {r}')

plt.scatter(data[[x_col]], data[[y_col]], color='purple')
plt.plot(data[[x_col]], model.predict(data[[x_col]]), color='green')
plt.title(f'{y_col} vs {x_col}')
plt.xlabel(x_col)
plt.ylabel(y_col)
plt.savefig("linear_regression_python_output.png")
plt.show()

