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


---


# Task 1: Print Square

## Description
This folder contains the solution for **Task 1 (Print square)** of the **Fix My Code Challenge** project. 

In this task, a broken JavaScript script designed to print a square of a given size using the character `#` was provided. The script suffered from formatting issues, printing characters continuously in a single long line instead of forming a proper grid (rows and columns).

## The Bug & Fix
* **The Bug:** The script failed to handle newlines correctly between rows, causing all hashes (`#`) to concatenate into a single horizontal string instead of a $N \times N$ square matrix.
* **The Fix:** Implemented nested loops (outer loop for rows and inner loop for columns) with proper newline separation after completing each row.

## Requirements & Environment
* **Language:** JavaScript (Node.js)
* **OS:** Ubuntu 20.04 LTS
* **Allowed Editors:** `vi`, `vim`, `emacs`
* **File Requirements:** Executable Node.js script ending with a new line.

## Usage
To run and test the fixed square printing script:

```bash
# Make the script executable
chmod +x 1-print_square.js

# Run the script with a size argument (e.g., 10)
./1-print_square.js 10


---


# Task 2: Sort

## Description
This folder contains the solution for **Task 2 (Sort)** of the **Fix My Code Challenge** project. 

In this task, a broken Ruby script designed to sort command-line arguments (integers, negative numbers, and strings) was provided. The script failed to properly sort mixed types, leading to sorting errors or truncated outputs.

## The Bug & Fix
* **The Bug:** Ruby reads command-line arguments (`ARGV`) as strings by default. Direct sorting of mixed data types or unhandled type casting resulted in `ArgumentError` or missing output elements.
* **The Fix:** Mapped and parsed arguments to check if they are numeric, safely casting valid numbers to integers (`to_i`) while keeping strings intact, and applied a robust comparison block during sorting to handle mixed types gracefully.

## Requirements & Environment
* **Language:** Ruby
* **OS:** Ubuntu 20.04 LTS
* **Allowed Editors:** `vi`, `vim`, `emacs`
* **File Requirements:** Executable Ruby script ending with a new line.

## Usage
To run and test the fixed sorting script:

```bash
# Make the script executable
chmod +x 2-sort.rb

# Run the script with mixed arguments
ruby 2-sort.rb 12 41 2 C 9 -9 31 fun -1 323132124129


---


# Task 3: User password

## Description
This folder contains the solution for **Task 3 (User password)** of the **Fix My Code Challenge** project. 

In this task, a broken Python `User` class was provided. The class manages user identification (`id`) via UUID and password handling using MD5 hashing, getters, setters, and a validation method (`is_valid_password`). However, password updates and validation checks failed due to variable mismatch and MD5 digest casing inconsistencies.

## The Bug & Fix
* **The Bug:** 
  1. Inside the password setter, the hashed password was incorrectly assigned to `self._password` (single underscore) instead of the private attribute `self.__password` (double underscore).
  2. An inconsistency between `.lower()` in the setter and `.upper()` in the validation method caused hash comparisons to fail.
* **The Fix:** Corrected the private attribute assignment to `self.__password` and unified MD5 hexadecimal formatting to lowercase (`.lower()`) across both the setter and validation logic.

## Requirements & Environment
* **Language:** Python 3 (`python3`)
* **OS:** Ubuntu 20.04 LTS
* **Allowed Editors:** `vi`, `vim`, `emacs`
* **File Requirements:** Executable Python script ending with a new line, conforming to PEP 8 style guidelines.

## Usage
To run and test the fixed user password script:

```bash
# Make the script executable
chmod +x 3-user.py

# Run the script
./3-user.py


---


# Task 4: Double linked list

## Description
This folder contains the solution for **Task 4 (Double linked list)** of the **Fix My Code Challenge** project. 

In this task, a broken C implementation for deleting a node at a specific index in a doubly linked list (`delete_dnodeint_at_index.c`) was provided. The original implementation suffered from incorrect pointer manipulation and use-after-free issues, which corrupted the list structure during node deletion.

## The Bug & Fix
* **The Bug:** 
  1. Incorrect pointer rewiring inside the node deletion block (e.g., mismanaging `prev` and `next` pointers of adjacent nodes).
  2. Attempting to access node members *after* calling `free(*head)` (use-after-free violation).
  3. Improper resetting of the list pointer (`*head`) after traversal.
* **The Fix:** Rewrote the pointer adjustment logic to correctly bridge the previous and next nodes *before* freeing the target node, ensuring complete structural integrity of the doubly linked list across all indices.

## Requirements & Environment
* **Language:** C (GNU89 standard)
* **OS:** Ubuntu 20.04 LTS
* **Compiler Flags:** `-Wall -pedantic -Werror -Wextra -std=gnu89`
* **Allowed Editors:** `vi`, `vim`, `emacs`

## Usage
To compile and test the implementation:

```bash
gcc -Wall -pedantic -Werror -Wextra -std=gnu89 main.c free_dlistint.c print_dlistint.c add_dnodeint_end.c delete_dnodeint_at_index.c -o delete_dnodeint
./delete_dnodeint
