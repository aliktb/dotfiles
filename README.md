# useful-tools

A list of useful tools

## Quick Setup

Run from terminal within macOS:

```bash
## Install Xcode Command Line Tools
xcode-select --install

## Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install Oh my Zsh:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Once Brew is installed, run the following to install all applications listed in the [Brewfile](./Brewfile):

```bash
brew bundle
```

Install zsh plugins:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Install Tmux plugins:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
