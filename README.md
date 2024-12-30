# ⚡️ Unboxing → developing

To get up and running with a new macOS device:

1. Install Command Line Tools for Xcode and Rosetta 2:
```bash
xcode-select --install
softwareupdate --install-rosetta
```
2. Install [Homebrew](https://brew.sh/):
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
3. Install my [Brewfile](Brewfile) with [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle):
```bash
brew bundle install --file=- < \
  <(curl --silent https://raw.githubusercontent.com/lsorber/brewfile/main/Brewfile)
```
4. Configure:
```bash
cat << EOF >> ~/.zshrc
export PIP_REQUIRE_VIRTUALENV=true  # Prevent erroneous pip install commands
export PATH="$HOME/.local/bin:$PATH"  # Python installations managed by uv
export PATH="$HOMEBREW_PREFIX/opt/openjdk/bin:$PATH"
source $HOMEBREW_PREFIX/opt/antidote/share/antidote/antidote.zsh
antidote load  # Add plugins to ~/.zsh_plugins.txt
eval "$(direnv hook zsh)"
eval "$(starship init zsh)"
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
EOF

# Set git's default branch name to main
git config --global init.defaultBranch main

# Show hidden files in Finder
defaults write com.apple.Finder AppleShowAllFiles true

# Use list view in Finder
defaults write com.apple.Finder FXPreferredViewStyle Nlsv
```
5. [Set an integer scaling factor for your display(s) in System Preferences](https://tonsky.me/blog/monitors/)
