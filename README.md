# Python Virtual Environment Management Script

## Overview

This project provides a Bash/Zsh script to manage Python virtual environments. It simplifies the process of creating, activating, and cleaning virtual environments. It also handles dependency installation from `pyproject.toml` or `requirements.txt`.

## Features

- **Create**: Set up a new virtual environment.
- **Activate**: Activate the virtual environment and install dependencies.
- **Clean**: Remove the virtual environment.
- **Help**: Display usage instructions.

## Use Cases

- **Setting Up a New Project**: Quickly create and activate a virtual environment for a new Python project.
- **Dependency Management**: Install project dependencies from `pyproject.toml` or `requirements.txt`.
- **Cleaning Up**: Remove an old or unused virtual environment.

## Installation

1. **Download the Script**

   Use `curl` or `wget` to download the script:

   ```bash
   curl -o ~/.venv.sh https://raw.githubusercontent.com/ryanparsa/venv.sh/main/venv.sh
   ```

   or

   ```bash
   wget -O ~/.venv.sh https://raw.githubusercontent.com/ryanparsa/venv.sh/main/venv.sh
   ```

2. **Make the Script Executable**

   Change the script’s permissions to make it executable:

   ```bash
   chmod +x ~/.venv.sh
   ```

3. **Source the Script**

   Add the following line to your shell configuration file (`~/.bashrc`, `~/.zshrc`, etc.):

   ```bash
   source ~/.venv.sh
   ```

   Apply the changes by sourcing the configuration file:

   ```bash
   source ~/.bashrc   # For Bash
   ```

   or

   ```bash
   source ~/.zshrc    # For Zsh
   ```

## Usage

After installing and sourcing the script, you can use the `venv` command:

- **Create and Activate a Virtual Environment**

  ```bash
  venv [<version>]
  ```

  - `<version>`: (Optional) Specify the Python version (e.g., `3.8`). Defaults to Python 3.

- **Clean Up the Virtual Environment**

  ```bash
  venv clean
  ```

  Removes the virtual environment and deactivates it if currently active.

- **Show Help Information**

  ```bash
  venv help
  ```

  or

  ```bash
  venv h
  ```

  Displays usage instructions.

## Examples

1. **Create and activate a virtual environment with the default Python version (3)**:

   ```bash
   venv
   ```

2. **Create and activate a virtual environment with a specific Python version (e.g., 3.9)**:

   ```bash
   venv 3.9
   ```

3. **Clean up an existing virtual environment**:

   ```bash
   venv clean
   ```

4. **Show help information**:

   ```bash
   venv help
   ```

   or

   ```bash
   venv h
   ```

## License

This script is licensed under the [MIT License](LICENSE).

## Contributions

Feel free to open issues or submit pull requests to suggest improvements or report bugs.
