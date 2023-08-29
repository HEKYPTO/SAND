# SAND.zsh 🪨

SAND.zsh is a simple Zsh script that simulates particles falling and stacking like sand in a terminal.

<details>
<summary>📖 Table of Contents</summary>

- [SAND.zsh 🪨](#sandzsh-)
  - [🛠️ Installation](#️-installation)
  - [🐳 Docker](#-docker)
  - [🚀 Usage](#-usage)
  - [🔄 Shorter Execution](#-shorter-execution)
  - [📂 Project Structure](#-project-structure)
  - [📜 License](#-license)

</details>

## 🛠️ Installation

1. **Clone the repository**:

    ```bash
    git clone https://github.com/your-username/sand-zsh.git
    cd sand-zsh
    ```

2. **Run the script**:

    ```bash
    ./sand.zsh
    ```

## 🐳 Docker

1. **Build and run the Docker container**:

    ```bash
    docker build -t sand-zsh .
    docker run -it --rm sand-zsh
    ```

    Customize behavior with:

    ```bash
    docker run -it --rm sand-zsh [args]
    ```

## 🚀 Usage

- Run with default settings:

    ```bash
    ./sand.zsh
    ```

- Customize with command-line args:

    ```bash
    ./sand.zsh [args]
    ```

    Available args: `-s`, `-i [symbol]`, `-t [time]`, `-b`, `-a`, `-r [value]`

## 🔄 Shorter Execution

1. **Rename the script**:

    ```bash
    mv sand.zsh sand
    ```

2. **Make the script executable**:

    ```bash
    chmod +x sand
    ```

    Execute with:

    ```bash
    sand [args]
    ```

## 📂 Project Structure

- `Dockerfile`: Docker configuration.
- `LICENSE`: License information.
- `README.md`: This file.
- `sand.zsh`: The simulation script.

## 📜 License

This project is licensed under the [MIT License](LICENSE).
