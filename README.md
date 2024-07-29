<h1 align='center'>Personal Zsh Configuration </h1>

This repository contains my Zsh configuration, designed to enhance your terminal experience with themes, plugins, and useful features.
## Installation

1. **Setup zsh**:
   - install [OhMyZSH](https://ohmyz.sh/)

   - install [Nerd Font](https://www.nerdfonts.com/font-downloads)

   - Install `figlet` and `lolcat`:
     
      - Debian/Ubuntu:
        ```sh
        sudo apt-get install figlet lolcat neofetch
        ```
  
     - RedHat/Fedora
       ```sh
        sudo dnf install figlet lolcat neofetch
       ```
     
      - macOS:
        ```sh
        brew install figlet lolcat neofetch
        ```
        
      - windows
        ```sh
        stick to cmd or install Linux
        ```
  1. **Clone the Repository to the home directory**:

```sh
 git clone https://github.com/Akshay-Vs/zsh-config.git ~/.zsh-config
 ```

  3. **Create a symlink to .zshrc**
```sh
ln -s ~/.zsh-config/.zshrc ~/.zshrc
 ```
  Or ****manually copy the contents of the `.zshrc` file into your `~/.zshrc` file**** like a caveman

---


  ## Configuration Details
  Theme: Configured to use agnoster, provides a functional and visually appealing prompt.
  
  ### **Plugins**: 
  - [git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git-commit)
  - [copybuffer](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/copybuffer) 
  - [web-search](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search) 
  - [z](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/z) 
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
  - [node](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/node) 
  - [npm](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/npm) 
  - [sudo](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo) 
  - [vscode](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vscode) 
  - [dirhistory](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dirhistory)
  
 ### Other Features
 Run `neofetch` when you open the terminal from home
 If not in the home directory, print your OS name in a cool way using `figlet` and `lolcat`
   
**If you are willing to install Zsh on Windows rather than just using Linux, here is an [awesome blog to follow](https://dev.to/zinox9/installing-zsh-on-windows-37em)**
