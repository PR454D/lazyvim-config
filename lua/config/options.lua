-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local vim = vim
local o = vim.o
local opt = vim.opt
local wo = vim.wo
local bo = vim.bo

-- Set completeopt to have a better completion experience
o.completeopt = "menuone,noselect"
opt.pumheight = 10
opt.clipboard = "unnamedplus"
opt.undofile = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.numberwidth = 4
opt.scrolloff = 4
opt.sidescrolloff = 4
o.inccommand = "nosplit"

o.exrc = true
o.showtabline = 2
o.cursorline = true
o.signcolumn = "yes:2"
o.colorcolumn = "80,120"

--Set highlight on search
o.hlsearch = false
o.incsearch = true
--Make line numbers default
wo.number = true
wo.relativenumber = true

--Do not save when switching buffers (note: this is now a default on master)
o.hidden = true

--Enable mouse mode
o.mouse = "a"

--Enable break indent
o.smartindent = false

bo.expandtab = true

--Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

--Decrease update time
o.updatetime = 20

--Set colorscheme (order is important here)
-- vim.cmd [[
-- 	set termguicolors
-- 	colorscheme tokyonight
-- ]]

--Remap space as leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Remap for dealing with word wrap
vim.api.nvim_set_keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Highlight on yank
vim.cmd([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]])

-- Y yank until the end of line  (note: this is now a default on master)
vim.api.nvim_set_keymap("n", "Y", "y$", { noremap = true })

wo.list = true
o.lcs = "extends:⇉,precedes:≺,tab:➜ ,trail:·,nbsp:%,eol:⤶,space:·"
o.splitright = true
wo.wrap = false
vim.cmd([[
    set path+=**
    set wildmenu
    set wildoptions=pum
    set wildignore+=**/node_modules/**
    set shortmess+=c
    set whichwrap+=<,>,[,],h,l
    set iskeyword+=-
    set formatoptions-=cro
    set background=dark
    set foldmethod=expr
    set foldexpr=nvim_treesitter#foldexpr()
    if has("gui_running")
        set guifont=\"JetBrainsMonoMedium Nerd Font Mono:h12\"
    endif
]])

vim.g.lazyvim_picker = "fzf"
