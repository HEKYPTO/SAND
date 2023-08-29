# SAND.zsh 🪨

SAND.zsh is a simple Zsh script that simulates particles falling and stacking like sand in a terminal.


Get ready to experience some **magic** with SAND.zsh! ✨

<details>
<summary>📖 Table of Contents</summary>

- [SAND.zsh 🪨](#sandzsh-)
  - [🛠️ Installation](#️-installation)
  - [🐳 Docker](#-docker)
  - [🚀 Usage](#-usage)
  - [🔄 Shorter Command](#-shorter-command)
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

    You can customize the behavior of SAND.zsh using various command-line arguments:

    - `-s`: Use '\*' instead of '@' as the particle symbol.
    - `-i [symbol]`: Set a custom particle symbol. For example: `-i ♥️`.
    - `-t [time]`: Set the sleep time between frames (default is 0.8 seconds). For example: `-t 0.5`.
    - `-b`: Enable bottom row removal when filled with particles.
    - `-a`: Automatically exit when the entire screen is filled with particles.
    - `-r [value]`: Set the randomness value for particle generation (default is 10). For example: `-r 5`.

    Example usage with arguments:

    ```bash
    ./sand.zsh -s -t 0.5 -a
    ```

    Experiment and create your own unique sandfall scenarios using these options!

## 🔄 Shorter Command

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

Ready to drop some virtual sand and groove? Let's go, party in your terminal! 🎉🔥
