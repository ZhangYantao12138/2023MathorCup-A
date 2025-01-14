# 2023 MathorCup-A - Optimization Algorithm

## **Project Overview**

This repository contains the code implementation for **Problem A** of the 2023 **MathorCup** competition, where our team earned the **grand prize**. The project focuses on optimizing the solution using a dictionary-based approach. The algorithm processes large datasets and efficiently calculates results using Python and several specialized libraries, leveraging advanced techniques such as quantum computing for optimization.

## **Environment Setup**

### **Dependencies**

Before running the code, make sure you have the following Python libraries installed. You can easily install them using the command below:

- `numpy`: Essential for matrix operations and numerical calculations.
- `pandas`: Used for data processing and handling CSV files.
- `pyqubo`: A tool for formulating and solving optimization problems.
- `openjij`: A library used for solving optimization problems using quantum computing methods.

To install the required libraries, use:

```bash
pip install numpy pandas pyqubo openjij
```

### **Data File**

The project uses the `data_100.csv` file, which should be placed in the same directory as the code file or referenced by the correct path. Please ensure the file is available for accurate execution of the program.

## **Project Structure**

- **data_100.csv**: The input dataset used for processing and optimization.
- **optimization.py**: The Python script containing the main code for data processing and optimization algorithm implementation.
- **README.md**: This documentation file.

## **Usage**

1. **Install Dependencies**: Make sure that all the required libraries are installed using the `pip` command mentioned above.
2. **Prepare Data**: Ensure the `data_100.csv` file is available in the project directory.
3. **Run the Code**: Execute the `optimization.py` script in a Jupyter Notebook or any Python environment that supports `.ipynb` files. This will carry out the optimization process and display the results.

## **Code Explanation**

This code implements an optimization algorithm using dictionaries to store matrix data and perform various operations. The main steps of the process are:

1. **Data Reading and Preprocessing**: The `data_100.csv` file is read, and the data is split into two matrices: `t` and `h`. These matrices are then processed to prepare them for the optimization algorithm.
2. **Dictionary Storage and Optimization**: The values from the matrices `t` and `h` are stored in dictionaries. The algorithm then optimizes these dictionaries to minimize the computational workload and improve efficiency.
3. **Final Computation**: After optimization, the `R_all(-L)` values are computed to determine the final results of the optimization process.

## **Contribution**

If you have any questions, suggestions, or feedback regarding the project, please feel free to reach out. We are always happy to collaborate and discuss further improvements.

## **License**

This project is licensed under the [MIT License](LICENSE).
