## Tools needed
### Ripgrep (for Telescope live grep)
Can be installed with `sudo apt install ripgrep`

### Nerd Font
https://linuxiac.com/how-to-install-fonts-on-linux/
- clone repository sparsely
- download a font from the website https://www.nerdfonts.com/font-downloads
- put font in patched-fonts folder of clone repo
- run powershell as administrator => .\install.ps1 <fontname>


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
