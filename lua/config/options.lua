-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

-- General settings from your vimrc
opt.clipboard = "unnamedplus" -- Use system clipboard
opt.mouse = "a" -- Enable mouse
opt.autoread = true -- Reread files automatically if changed outside

-- Cursor and visual
opt.cursorline = true -- Highlight current line
opt.cursorlineopt = "number" -- Only highlight line number

-- Search
opt.ignorecase = true -- Case-insensitive searching
opt.smartcase = true -- Case-sensitive if uppercase present

-- Display
opt.wrap = true -- Wrap lines (you had nowrap but later set wrap)
opt.scrolloff = 3 -- Lines of context
opt.title = true -- Set terminal title
opt.visualbell = true -- No beeping
opt.relativenumber = false

-- Tabs and indentation
opt.tabstop = 2 -- Tab width
opt.shiftwidth = 2 -- Indent width
opt.expandtab = true -- Use spaces instead of tabs

-- Undo and backup
opt.undofile = true
opt.undolevels = 1000
opt.undoreload = 10000

-- Create directories if they don't exist
local function ensure_dir(dir)
  if vim.fn.isdirectory(dir) == 0 then
    vim.fn.mkdir(dir, "p")
  end
end

ensure_dir(vim.fn.expand("~/.vim/tmp"))
ensure_dir(vim.fn.expand("~/.vim/.undo"))
ensure_dir(vim.fn.expand("~/.vim/.backup"))
ensure_dir(vim.fn.expand("~/.vim/.swp"))

opt.directory = vim.fn.expand("~/.vim/.swp//")
opt.undodir = vim.fn.expand("~/.vim/.undo//")
opt.backupdir = vim.fn.expand("~/.vim/.backup//")

-- Wildignore patterns
opt.wildignore:append({
  "*.docker/*",
  "*.vagrant/*",
  "*/_build/*",
  "*/deps/*",
  "*/tmp/*",
  "*.so",
  "*.swp",
  "*.zip",
  "node_modules/*",
  ".git/*",
  "target/*",
  "lib/*",
})

-- Spell checking
opt.spell = true
opt.guifont = "0xProto Nerd Font:h12"
