# ⚡️ Unboxing → developing

To get up and running with a new macOS device:

1. Install [Homebrew](https://brew.sh/):
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
2. Install my [Brewfile](Brewfile) with [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle):
```bash
brew bundle install --file=- < \
  <(curl --silent https://raw.githubusercontent.com/lsorber/brewfile/main/Brewfile)
```
3. Configure the shell:
```bash
echo "set fish_greeting" >> ~/.config/fish/config.fish
```
4. [Configure an integer scaling factor for your display(s) in System Preferences](https://tonsky.me/blog/monitors/) and then disable font smoothing:
```bash
defaults -currentHost write -g AppleFontSmoothing -int 0
```
