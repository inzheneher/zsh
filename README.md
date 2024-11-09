# Zsh Setup Script
This script automates the installation and configuration of `zsh`, `oh-my-zsh`, and two popular plugins: `zsh-autosuggestions` and `zsh-syntax-highlighting`.
## Prerequisites
- Ubuntu or a similar Linux distribution
- `curl` and `git` should be installed on your system. If not, you can install them with:
  ```bash
  sudo apt update
  sudo apt install -y curl git
  ```
## What the Script Does
- Installs zsh if it is not already installed.
- Installs oh-my-zsh if it is not already installed.
- Installs the zsh-autosuggestions and zsh-syntax-highlighting plugins.
- Updates your .zshrc configuration file to enable these plugins.
## Usage
1. Clone or download this repository.
2. Make the script executable:
  ```bash
  chmod +x install-zsh-plugins.sh
  ```
3. Run the script:
  ```bash
  ./install-zsh-plugins.sh
  ```
4. Restart your terminal or run the following command to apply the changes immediately:
  ```bash
  source ~/.zshrc
  ```
## Customization
The script installs the plugins in the default custom plugin directory used by oh-my-zsh: $HOME/.oh-my-zsh/custom/plugins.
You can modify the script to add additional plugins or change the installation behavior as needed.
## Troubleshooting
If you encounter any issues with the installation, make sure that curl and git are installed and that you have a stable internet connection.
For any errors related to oh-my-zsh, refer to their official documentation.
## License
This script is provided as-is without warranty. Feel free to modify and use it as per your needs.
