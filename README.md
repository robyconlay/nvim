## Tools needed

### Ripgrep (for Telescope live grep)

Can be installed with `sudo apt install ripgrep`

### LazyGit

```
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```

### Nerd Font

https://linuxiac.com/how-to-install-fonts-on-linux/
https://www.geekbits.io/how-to-setup-nerd-fonts-in-windows/

- clone repository sparsely: `git clone --filter=blob:none --sparse https://github.com/ryanoasis/nerd-fonts.git`
- download a font from the website https://www.nerdfonts.com/font-downloads
- put font in `patched-fonts` folder of cloned repo
- run powershell as administrator => .\install.ps1 <fontname>

If powershell returns `error cannot be loaded because running scripts is disabled on this system.`, open powershell as Administrator and run this command `Set-ExecutionPolicy -ExecutionPolicy RemoteSigned`

## Guide

Steps

- install tools from previous section
- Clone Neovim
- Clone lazy.nvim (should happen automatically)
- Install Mason linters and formatters (names found in none_ls.lua)

## Useful commands

:messages shows errors

view the currently mapped keys in Vim
You can do that with the :map command. There are also other variants.

:nmap for normal mode mappings
:vmap for visual mode mappings
:imap for insert mode mappings
The above list is not complete. Typing :help map in Vim will give you more info.

<C-o> go to previous cursor position
