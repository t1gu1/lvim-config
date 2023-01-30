# Lunar Vim config

![image](https://user-images.githubusercontent.com/12479055/215344413-5468b808-6140-49e5-b1cd-6de741a3abd8.png)

Gradually learn with a keymaps menu (Default Vim behavior/keyMaps exclude from this menu)

![image](https://user-images.githubusercontent.com/12479055/215520038-7bd22eeb-0095-4280-ab9b-88401580c9dd.png)

## Why

- Easier to learn with the <leader> menu that show all keymaps
- I love saving my config on the cloud to get it fast if I change OS or works on another PC.
- Eslint and prettier are setup correctly to works with typescript and react (auto format on save works)
- Few tweaks that make everything easier or remove bugs
- Few usefull plugin added and already mapped to control for you
- LunarVim is easy and fast to setup, you'll spare a really good time to simply git clone that config (Easier to remove or edit than add new stuff)
- Add some missing to treesitter

## Plugin added

Most of the plugins are listed hehere: <https://www.lunarvim.org/docs/plugins/extra-plugins>

- git-blame
- nvim-specter
- trouble
- lsp_signature <- so nice
- goto-preview <- sooo nice
- Harpoon <- To be Blazingly fast
- Mini sourround
- package-info
- cutlass <- Better Telescope view/preview!

P.S. Almost everything is accesible if you do `<leader>` and you wait 2 seconds. (popup will show you shortcuts)

## How to setup

On Mac I recommand to use Kitty terminal.
It's faster and display things correctly.

<https://sw.kovidgoyal.net/kitty/binary/>

- Install neoVim 8.0+ <https://github.com/neovim/neovim/wiki/Installing-Neovim> (Nightly)
- Install LunarVim on top of it <https://www.lunarvim.org/docs/installation>
- I switch to the master branch of lvim
- Then execute that blazingly fast command to replace the config: `rm -R ~/.config/lvim && git clone git@github.com:t1gu1/lvim-config.git ~/.config/lvim`
- Install [ripgrep](https://github.com/BurntSushi/ripgrep) it will ignore files in you .ignore and things like that
- Install The nerds-fonts include in this repo (Be sure to use it in your terminal font config)
- When you launch lvim the first time install the packer plugins. (Be on the master branch of lvim before) (I should provide the command line for that)
- Install your Mason things with `:Mason`
- Close lvim and open it again. Now do a `:checkhealth` to check if you have some issues/missing dependency from your OS.
- If you fix an issue close lvim before another `:checkhealth`

## Mason things I personally install

![image](https://user-images.githubusercontent.com/12479055/214904340-60716a85-494a-409b-81d2-9046d1d444b8.png)

## Issue I got with a checkhealth or other that can fix easly

- Install wget with brew
- :TSUpdate vim
- :TSUpdate lua
- :TSUpdate markdown (etc, it will show you the list)
- On mac use Kitty terminal (Linux is perfect on a base terminal)

## Basic nice commands

- First, you should learn your basic Vim keybind <https://devhints.io/vim>
  - P.S. `d` and `dd` are modified to just remove without replacing the yank `y` value. (`cutlass` plugin)
  - `<leader>d` will act as the defaut `d` like a "cut".
- Then take a look of LunarVim keybind <https://www.lunarvim.org/docs/keybind-overview>

### P.S. I'll repeat some commands, but it feel like it's the nice to know if you wanna try fast

- `<leader>o` will open the current directory file in your OS GUI
- `<leader>h` will open the harpoon options menu
- `<leader>` Alone, after few seconds, will display a modal with a lot of commands in it
- `<cr>|` will display terminal
- `2<cr>|` will display terminal number 2
- `/wordToSearch` will highlight words in you file
- `:%s/wordToReplace/wordThatWillReplace` live search and replace in the current file
- `<leader>r` will open the global search and replace
  - `n` and `N` will move you to the next or previous word
- `<cr>h` `<cr>l` `<cr>j` `<cr>k` will make you move to between windows (Example, if a code file is open and the file explorer is open)
- `<leader>bb` will make you move to you previous tab
- `<leader>bn` will make you move to the next tab
- `<cr>s` will save/write you file

### Commands in nvimTree

- `a` Create a new file or folder (By adding `/` to the path, it will be a folder)
- `x` to files and folder you want to move then press `p` to the place you want move/paste them
- `r` Rename a file or folder

### Legend

- `<leader>` = spacing bar
- `<cr>` = ctrl
- `|` is at the same place where the backslash is \ (Just to say it's really a caracter)

## Nice to know

- The things that determine "A Project" is if a ".git folder exist".
- There is an auto save (Not sure if the time delay really works)
- `d` and `dd` are modified to just remove without replacing the yank `y` value. (`cutlass` plugin)
- Harpoon plugin is a sweet plugin `<leader>h` will show you more.
- You can modify everything if you want.

## What I would love to add


- Add a one line command to install all require packages (like ripgrep) on mac and Linux
- Add command line to switch to the master brach of LunarVim or a specefic commit id
- (⚠️ The complexity for the result isn't worth for now) Something to preview or inline png/svg images 
- (✅ Done) harpoon plugin
