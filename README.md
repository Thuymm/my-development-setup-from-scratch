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
    <li><a href="#usage">Usage</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

## About The Project

This project is about to save my development setup workspace and config files and share to the others people to use setup the development environment in one repo.

### Tools

1. cli tools
   - [Brew](https://brew.sh)
   - [OMZ](https://ohmyz.sh)
   - [Compoer](https://getcomposer.org)
   - [Valet Plus](https://github.com/weprovide/valet-plus)
     - php
     - mysql
     - redis
     - mailhog
     - dnsmasq
     - nginx
     - xdebug
   - [Flutter](https://flutter.dev)
   - [Trash-cli](https://github.com/andreafrancia/trash-cli)
   - [MacVim](https://macvim-dev.github.io/macvim/)
2. Non Development Setup
   - [Alfred](https://www.alfredapp.com) Extra Features - $29 power pack
   - [Spotify](https://www.spotify.com/us/download/mac/) $9.99/month
   - [1Password](https://1password.com) $2.99/month billed annually
   - [NordVPN](https://nordvpn.com) $11.95/month, $4.92/month 1 year, $3.3/month 2 years or $8.9/month
   - [VLC](https://www.videolan.org/vlc/download-macosx.html)
   - [Appcleaner](https://freemacsoft.net/appcleaner/)
   - [Rectangle](https://rectangleapp.com)
   - [Logi Options](https://www.logitech.com/en-us/product/options)
   - [AirDroid](https://www.airdroid.com)
   - [Telegram](https://telegram.org)
   - [Twitter](https://apps.apple.com/us/app/twitter/id1482454543?mt=12)
   - [Steam](https://steamcommunity.com)
   - [Zoom](https://zoom.us)
   - [TeamViewer](https://www.teamviewer.com/en-us/)
   - [The Unarchiver](https://theunarchiver.com)
3. Development Setup
   - [Fork](https://git-fork.com) $49.99 or free evaluation
   - [PhpStorm](https://www.jetbrains.com/phpstorm/) first year $89 second year $71 third year on wards $53
   - [IntelliJ IDEA](https://www.jetbrains.com/idea/) Ultimate - first year $149 second year $119 third year on wards $89 or $14.9/month
   - [IntelliJ IDEA](https://www.jetbrains.com/idea) Community - Free
   - [Android Studio](https://developer.android.com/studio)
   - [Xcode](https://developer.apple.com/xcode/)
   - [Sequel Ace](https://apps.apple.com/us/app/sequel-ace/id1518036000?mt=12)
   - [iTerm2](https://iterm2.com)
   - [Chrome](https://www.google.com/chrome/)
   - [Visual Studio Code](https://code.visualstudio.com)
4. [Setapp](https://setapp.com) $9.99/month or 8.99/month for annual to get following services
   - [TablePlus](https://tableplus.com) $69
   - [Paw](https://paw.cloud) $49.99
   - [Better Touch Tool](https://folivora.ai) like Rectangle - $8.5 for two years update and $20.5 for life time
   - [Bartender](https://www.macbartender.com) $15
5. Misc
   - [Fira Code](https://github.com/tonsky/FiraCode)

<!-- GETTING STARTED -->

## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.

- Install Homebrew
  ```sh
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

### Installation

- Install Valet Plus <br/>
  Installation on M1 chip/Apple Sillicon

  ```
    brew install valet-php@7.2

    brew link --force valet-php@7.2

    composer global require weprovide/valet-plus

    cd ~/.composer/vendor/weprovide

    rm -rf valet-plus

    git clone https://github.com/Adam2Marsh/valet-plus

    cd ~/

    valet --brew-opt fix

    valet --brew-opt install
  ```

  Installation on intel

  ```sh
    brew install valet-php@7.2

    brew link --force valet-php@7.2

    composer global require weprovide/valet-plus

    valet fix

    valet install
  ```

<!-- CONFIGURATION EXAMPLES -->

## Configuration

<!-- USAGE EXAMPLES -->

## Usage

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.

_For more examples, please refer to the [Documentation](https://example.com)_

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->

## Contact

Your Name - [@twitter_handle](https://twitter.com/twitter_handle) - email

Project Link: [https://github.com/github_username/repo_name](https://github.com/github_username/repo_name)
