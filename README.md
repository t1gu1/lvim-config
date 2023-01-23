# Lunar Vim config

## Why

- I love saving my config on the cloud to get it fast if I change OS or works on another PC.
- Eslint and prettier are setup correctly to works with typescript and react (auto format on save works)
- Few tweaks that make everything easier or remove bugs
- Few usefull plugin added and already mapped to control for you
- LunarVim is easy and fast to setup, you'll spare a really good time to simply git clone that config (Easier to remove or edit than add new stuff)
- Add some missing to treesitter

## Plugin added

Most of the plugins are listed hehere: <https://www.lunarvim.org/docs/plugins/extra-plugins>

- auto-save
- git-blame
- diffview
- nvim-specter
- trouble
- lsp_signature <- so nice
- goto-preview <- sooo nice

P.S. Everything is accesible if you do `<leader>` and you wait 2 seconds.

## How to setup

- Install neoVim 8.0+ <https://github.com/neovim/neovim/wiki/Installing-Neovim>
- Install LunarVim on top of it <https://www.lunarvim.org/docs/installation>
- Copy your old lvim folder just to be safe (Not required) `cp ~/.config/lvim ~/.config/lvim-old && git@github.com:t1gu1/lvim-config.git:~/.config/lvim`
- Then execute that blazingly fast command to replace the config: `rm -R ~/.config/lvim && git@github.com:t1gu1/lvim-config.git:~/.config/lvim`

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

- Something to preview or inline png/svg images (Require other terminal and the result wasn't worth for now)
- harpoon plugin (Seems like The PrimeaGen will rework it.. So I'll just wait for now)
