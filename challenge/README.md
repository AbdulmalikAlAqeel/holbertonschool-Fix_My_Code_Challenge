# Task 0: FizzBuzz

## Description
This folder contains the solution for **Task 0 (FizzBuzz)** of the **Fix My Code Challenge** project. 

In this task, a broken Python implementation of the classic **FizzBuzz** game was provided. The script failed to correctly print `FizzBuzz` for numbers that are multiples of both 3 and 5 (such as `15`), incorrectly printing `Fizz` instead because of an improper conditional branch order.

## The Bug & Fix
* **The Bug:** The script evaluated whether a number was a multiple of `3` before checking if it was a multiple of `15` (both 3 and 5). Since Python evaluates `if-elif` statements top-to-bottom, numbers like 15 met the condition for 3 first and prematurely exited with `Fizz`.
* **The Fix:** Reordered the conditional statements to prioritize the strictest condition (`multiple of both 3 and 5` or `n % 15 == 0`) at the very top of the control flow.

## Requirements & Environment
* **Language:** Python 3
* **OS:** Ubuntu 20.04 LTS
* **Allowed Editors:** `vi`, `vim`, `emacs`
* **File Requirements:** Executable python script ending with a new line.

## Usage
To run and test the fixed FizzBuzz script:

```bash
# Make the script executable
chmod +x 0-fizzbuzz.py

# Run the script with a number (e.g., 50)
./0-fizzbuzz.py 50
