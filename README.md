<!-- PROJECT LOGO -->
<p align="center">
  <h3 align="center">My Development Setup From Scratch</h3>
  <p align="center">
    I will show you about my devlopment setup, non development setup, configurations and cli tools.
    <br />
    <br />
  </p>
</p>

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary><h2 style="display: inline-block">Table of Contents</h2></summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#tools">Tools</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
        <li><a href="#configuration">Configuration</a></li>
      </ul>
    </li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

## About The Project

This project is about to save my development setup workspace and config files and share to the others people to use setup the development environment in one repo.

### Tools

1.  CLI tools

    - [Brew](https://brew.sh)
    - [OMZ](https://ohmyz.sh)
    - [Cocoapod](https://cocoapods.org)
    - [Herd](https://herd.laravel.com/)
    - [Flutter](https://flutter.dev)
    - [lazyvim](https://lazyvim.org)
    - [lazygit](https://github.com/jesseduffield/lazygit)
    - [ripgrep](https://github.com/BurntSushi/ripgrep)
    - [fd](https://github.com/sharkdp/fd)
    - [Trash-cli](https://github.com/andreafrancia/trash-cli)
    - [nvm](https://github.com/nvm-sh/nvm)
    - [NodeJS](https://nodejs.org/en/)

2.  Non Development Setup

    - [Lark](https://www.larksuite.com/en_sg)
    - [Logi Options+](https://www.logitech.com/en-us/software/logi-options-plus.html)
    - [Raycast](https://www.raycast.com/)
    - [Alt-Tab](https://alt-tab-macos.netlify.app)
    - [HiddenBar](https://github.com/dwarvesf/hidden)
    - [Shottr](https://shottr.cc)
    - [Monitor Control](https://github.com/MonitorControl/MonitorControl)
    - [Appcleaner](https://freemacsoft.net/appcleaner/)
    - [The Unarchiver](https://theunarchiver.com)
    - [Zoom](https://zoom.us)
    - [DockDoor](https://dockdoor.net/)
    - [TeamViewer](https://www.teamviewer.com/en-us/)
    - [Steam](https://steamcommunity.com)
    - [Spotify](https://www.spotify.com/us/download/mac/)
    - [Telegram](https://telegram.org)
    - [VLC](https://www.videolan.org/vlc/download-macosx.html)
    - [Twitter](https://apps.apple.com/us/app/twitter/id1482454543?mt=12)
    - [Rectangle](https://rectangleapp.com) Optional
    - [Maccy](https://github.com/p0deje/Maccy#usage) Optional
    - [AirDroid](https://www.airdroid.com) Optional

3.  Development Setup

    - [Fork](https://git-fork.com)
    - [IntelliJ IDEA Ultimate](https://www.jetbrains.com/idea/)
    - [IntelliJ IDEA Community](https://www.jetbrains.com/idea)
    - [Android Studio](https://developer.android.com/studio)
    - [Xcode](https://developer.apple.com/xcode/)
    - [Navicat Premium 16](https://www.navicat.com/en/products/navicat-premium)
    - [TablePlus](https://tableplus.com/)
    - [Termius](https://termius.com/)
    - [iTerm2](https://iterm2.com)
    - [neovim](https://neovim.io/)
    - [ApiDog](https://apidog.com)
    - [Arc](https://arc.net/)
    - [Zen](https://zen-browser.app/)
    - [Chrome](https://www.google.com/chrome)
    - [Micorsoft Edge](https://www.microsoft.com/en-us/edge)
    - [Visual Studio Code](https://code.visualstudio.com)
    - [Zed](https://zed.dev)

4.  Misc

    - deploymnet-setup.sh will guide you to setup server deployment from scratch.
    - idea_settings.zip to import IDE settings for IntelliJ IDEA.
    - studio_settings.zip to import IDE settings for Android Studio.
    - pstorm_settings.zip to import IDE settings for PhpStorm.
    - RectangleConfig.json to import config file for Rectangle App.
    - Pro.json and Material.json to import config and theme for iTerm2 App.
    - Navicat Trial Reset Script

      ```sh
      cp my-development-setup-from-scratch/navicat.sh ~/Documents/navicat.sh
      ```

    - [Fira Code](https://github.com/tonsky/FiraCode)
    - [Monaspace](https://github.com/githubnext/monaspace)
    - [vscode-icons](https://github.com/dhanishgajjar/vscode-icons)

       <img src="images/citylights_option_code.png" width="15%">
       <img src="images/synthwave_code.png" width="15%">

    - [terminal-icons](https://github.com/dhanishgajjar/terminal-icons)

       <img src="images/citylights_option_terminal.png" width="15%">
       <img src="images/synthwave_terminal.png" width="15%">

    - add spacer on dock command

      1. Open your favourite Terminal application.
      2. Choose Spacer size. You can add a regular spacer or a small spacer. Copy and paste one of the scripts into your Terminal.

         - _For Regular Spacer script:_

           ```sh
           defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock
           ```

         - _For Small spacer script:_

           ```sh
           defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="small-spacer-tile";}'; killall Dock
           ```

      3. Move the spacer(s). Drag and drop the spacer(s) to the desired location on your dock.

      **Note:** You can delete spacers like any other icon on your dock. Drag the icon off your dock to remove it from your dock or right-click and choose **Remove from Dock**.

      <!-- GETTING STARTED -->

## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.

- Install Homebrew

  ```sh
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

- Install OMZ

  ```sh
  # curl
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # wget
  sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # fetch
  sh -c "$(fetch -o - https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```

  _For more detail, [Github](https://github.com/ohmyzsh/ohmyzsh/) / [Website](https://ohmyz.sh)_

- Install Powerlevel10k Theme

  ```sh
  git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
  ```

- Install zsh-syntax-highlighting

  ```sh
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  ```

  _For more detail, [Github](https://github.com/zsh-users/zsh-syntax-highlighting)_

- Install Cocoapods

  ```sh
  brew install cocoapods
  ```

  _For more detail, [Cocoapods](https://cocoapods.org)_

- Install Neovim

  ```sh
  brew install neovim

  cp -r my-development-setup-from-scratch/nvim ~/.config/nvim
  ```

### Installation

- Install Flutter

  ```sh
  brew install --cask flutter
  ```

  _For more detail config, please go to the [Documentation](https://flutter.dev/docs/get-started/install/macos) and follow the steps_

- Install Visual Studio Code shell command `code` in PATH.

  <img src="screenshots/code.gif">

- Install Fira Code Font

  ```sh
  brew tap homebrew/cask-fonts
  brew install --cask font-fira-code
  ```

- Install JetBrains Mono Font

  ```sh
  brew tap homebrew/cask-fonts
  brew install --cask font-jetbrains-mono
  ```

- Install Github Monospace Font

  ```sh
  brew tap homebrew/cask-fonts
  brew install font-monaspace
  brew install --cask font-monaspace-nerd-font
  ```

- Optional Extra Installation for CLI tools

  ```sh
  brew install --cask herd
  brew install --cask raycast
  brew install --cask hiddenbar
  brew install --cask shottr
  brew install --cask alt-tab
  brew install MonitorControl
  ```

<!-- CONFIGURATION EXAMPLES -->

## Configuration

1. Zsh Config

    Add this code at the bottom of the .zshrc file.

    ```sh
    # OMZ plugin
    ZSH_THEME="powerlevel10k/powerlevel10k"
    plugins=(flutter git git-flow macos npm zsh-syntax-highlighting yii)

    # Misc
    alias zshconfig="vim ~/.zshrc"
    alias zshreload="source ~/.zshrc"
    alias hostfile="sudo vim /etc/hosts"
    alias sshconfig="vim ~/keys/config"
    alias vimconfig="vim ~/.vimrc"
    alias navicat="~/Documents/navicat.sh"

    alias o="open ."
    alias c="code ."

    # Path
    export PATH="/opt/homebrew/bin:$PATH" # M1/Apple Silicon
    # export PATH="$PATH:/usr/local/bin" # intel
    export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
    export PATH="$PATH":"$HOME/.pub-cache/bin"
    export GPG_TTY=$(tty)

    export PATH="$PATH":"$HOME/.pub-cache/bin"

    export PATH="$PATH:$HOME/.composer/vendor/bin"

    # Android studio
    alias studio='open -na '\''Android Studio.app'\'' --args '\'\'
    export ANDROID_HOME=/Users/$(whoami)/Library/Android/sdk
    export PATH="$PATH:$ANDROID_HOME/platform-tools"

    #idea launcher
    alias idea='open -na '\''IntelliJ IDEA.app'\'' --args '\'\'
    ```

2. Vim Config

   First, git clone the [my development setup from scratch](https://github.com/Thuymm/my-development-setup-from-scratch).

   ```sh
   $ git clone https://github.com/Thuymm/my-development-setup-from-scratch.git ~/development-setup-from-scratch
   ```

   Move or copy the vim folder and vimrc file to home directory and rename it to `.vim` and `.vimrc`.

   ```sh
   cp -r my-development-setup-from-scratch/vim ~/.vim

   cp my-development-setup-from-scratch/vim/vimrc ~/.vimrc
   ```

3. iTerm2

   `Command + ,` to open preferences -> Keys -> Hotkey -> set Hotkey: I'm using **control + shift + `** as hotkey

   To set the color theme, Preferences -> Profiles -> Other Actions... in left pane to import JSON profiles. Choose Pro.json or Material.json files. Then set as default to the profile that you imported.

   Preferences -> Apperance -> General -> Theme: choose Minimal

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->

## Contact

Thuymm - [@thuymm6666](https://twitter.com/thuymm6666) - [email](mailto:thuyeinmoemyint@icloud.com)

Project Link: [My Development Setup From Scratch](https://github.com/Thuymm/my-development-setup-from-scratch)
