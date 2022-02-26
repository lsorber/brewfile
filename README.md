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
4. Configure the installed packages:
```bash
git config --global init.defaultBranch main
mkdir -p ~/.config/fish/
echo "set fish_greeting" >> ~/.config/fish/config.fish
```
5. [Configure an integer scaling factor for your display(s) in System Preferences](https://tonsky.me/blog/monitors/)
