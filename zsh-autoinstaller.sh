#!/bin/bash

# Install zsh if it is not already installed
if ! [ -x "$(command -v zsh)" ]; then
    echo "Installing zsh..."
    sudo apt update
    sudo apt install -y zsh
else
    echo "zsh is already installed."
fi

# Install oh-my-zsh if it is not already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo "oh-my-zsh is already installed."
fi

# Create directory for custom plugins if it does not exist
CUSTOM_PLUGINS_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins"
mkdir -p "$CUSTOM_PLUGINS_DIR"

# Install zsh-autosuggestions
if [ ! -d "$CUSTOM_PLUGINS_DIR/zsh-autosuggestions" ]; then
    echo "Installing zsh-autosuggestions..."
    git clone https://github.com/zsh-users/zsh-autosuggestions "$CUSTOM_PLUGINS_DIR/zsh-autosuggestions"
else
    echo "zsh-autosuggestions is already installed."
fi

# Install zsh-syntax-highlighting
if [ ! -d "$CUSTOM_PLUGINS_DIR/zsh-syntax-highlighting" ]; then
    echo "Installing zsh-syntax-highlighting..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$CUSTOM_PLUGINS_DIR/zsh-syntax-highlighting"
else
    echo "zsh-syntax-highlighting is already installed."
fi

# Update .zshrc to use the plugins
if ! grep -q "zsh-autosuggestions" ~/.zshrc; then
    echo "Adding zsh-autosuggestions to .zshrc..."
    sed -i 's/plugins=(/plugins=(zsh-autosuggestions /' ~/.zshrc
fi

if ! grep -q "zsh-syntax-highlighting" ~/.zshrc; then
    echo "Adding zsh-syntax-highlighting to .zshrc..."
    sed -i 's/plugins=(/plugins=(zsh-syntax-highlighting /' ~/.zshrc
fi

echo "Installation completed. Restart your terminal or run 'source ~/.zshrc' to apply changes."
