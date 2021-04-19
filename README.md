# My Resource Configuration File

**This Repository maintains the .\*rc file that I daliy use.**

* [vim](#vim)
* [zsh](#zsh)

### vim
1. Install [**Vundle**](https://github.com/VundleVim/Vundle.vim):
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

2. Backup the .vimrc file (if there exists .vimrc file):
```bash
cd
mv .vimrc .vimrc-backup
```

3. Clone **My-RC**:
```bash
git clone https://github.com/Jason-Young-AI/My-RC.git
```

4. Create symbolic link to .vimrc in **My-RC**:
```bash
cd
ln -s ~/My-RC/vim/.vimrc .vimrc
```

5. Run vim, then install the plugins that listed in .vimrc:
```bash
vim
:PluginInstall
```

### zsh
1. Install [**ohmyzsh**](https://github.com/ohmyzsh/ohmyzsh):
>Oh My Zsh is installed by running one of the following commands in your terminal. You can install this via the command-line with either curl, wget or another similar tool.
>| Method    | Command                                                                                           |
>|:----------|:--------------------------------------------------------------------------------------------------|
>| **curl**  | `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"` |
>| **wget**  | `sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`   |
>| **fetch** | `sh -c "$(fetch -o - https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"` |

2. Backup the .zshrc and .zlogout file (if there exists .zsh and .zlogout file):
```bash
cd
mv .zshrc .zshrc-backup
mv .zlogout .zlogout-backup
```

3. Clone **My-RC**:
```bash
git clone https://github.com/Jason-Young-AI/My-RC.git
```

4. Create symbolic link to .zshrc and .zlogout in **My-RC**:
```bash
cd
ln -s ~/My-RC/zsh/.zshrc .zshrc
ln -s ~/My-RC/zsh/.zlogout .zlogout
```
