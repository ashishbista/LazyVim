-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Set leader key (LazyVim uses space by default, but I prefer comma)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Paste mode toggle
keymap("n", "<F4>", ":set invpaste<CR>:set paste?<CR>", opts)
keymap("i", "<F4>", "<ESC>:set invpaste<CR>:set paste?<CR>", opts)

-- Format entire file
keymap("n", "<leader>fef", "gg=G", { desc = "Format entire file" })

-- Upper/lower word
keymap("n", "<leader>wu", "mQviwU`Q", { desc = "Uppercase word" })
keymap("n", "<leader>wU", "mQgewvU`Q", { desc = "Uppercase first char" })
keymap("n", "<leader>wL", "mQgewvu`Q", { desc = "Lowercase first char" })

-- Directory navigation
keymap("n", "<leader>md", ":!mkdir -p %:p:h<CR>", { desc = "Create parent directories" })

-- Edit helpers
keymap("n", "<leader>ew", ":e <C-R>=expand('%:h').'/'<cr>", { desc = "Edit in same dir" })
keymap("n", "<leader>es", ":sp <C-R>=expand('%:h').'/'<cr>", { desc = "Split in same dir" })
keymap("n", "<leader>ev", ":vsp <C-R>=expand('%:h').'/'<cr>", { desc = "Vsplit in same dir" })
keymap("n", "<leader>et", ":tabe <C-R>=expand('%:h').'/'<cr>", { desc = "Tab in same dir" })

-- Find merge conflicts
keymap("n", "<leader>Fc", [[/\v^[<=>]{7}( .*\|$)<CR>]], { desc = "Find merge conflicts" })

-- Display line navigation
keymap({ "n", "v" }, "<Down>", "gj", opts)
keymap({ "n", "v" }, "<Up>", "gk", opts)

-- Toggle hlsearch
keymap("n", "<leader>hs", ":set hlsearch! hlsearch?<CR>", { desc = "Toggle hlsearch" })

-- Search and replace
keymap("n", "<leader>Sf", "/", { desc = "Find" })
keymap("n", "<leader>Sr", ":%s/", { desc = "Replace" })
keymap("n", "<F3>", "n", { desc = "Find next" })

-- Clipboard operations
keymap("v", "<leader>Xx", '"+x', { desc = "Cut to clipboard" })
keymap("v", "<leader>Xc", '"+y', { desc = "Copy to clipboard" })

-- Move lines (Alt+Up/Down) - alternative to LazyVim's <A-j/k>
keymap("n", "<A-Up>", ":m .-2<cr>==", { desc = "Move line up" })
keymap("n", "<A-Down>", ":m .+1<cr>==", { desc = "Move line down" })
keymap("i", "<A-Up>", "<Esc>:m .-2<cr>==gi", { desc = "Move line up" })
keymap("i", "<A-Down>", "<Esc>:m .+1<cr>==gi", { desc = "Move line down" })
keymap("v", "<A-Up>", ":m '<-2<cr>gv=gv", { desc = "Move selection up" })
keymap("v", "<A-Down>", ":m '>+1<cr>gv=gv", { desc = "Move selection down" })

-- Settings and configuration
keymap("n", "<leader>oc", "<cmd>e ~/.config/nvim/lua/config/options.lua<cr>", { desc = "Open config" })

-- Navigation history
keymap("n", "<A-Left>", "<C-o>", { desc = "Go back" })
keymap("n", "<A-Right>", "<C-i>", { desc = "Go forward" })

-- Bookmarks (marks in vim)
keymap("n", "<leader>mm", "mm", { desc = "Toggle bookmark" })
keymap("n", "<leader>mn", "]`", { desc = "Next bookmark" })
keymap("n", "<leader>mp", "[`", { desc = "Previous bookmark" })

-- Enhanced navigation (center after movement)
keymap("n", "n", "nzzzv", { desc = "Next search result and center" })
keymap("n", "N", "Nzzzv", { desc = "Previous search result and center" })
keymap("n", "{", "{zz", { desc = "Previous paragraph and center" })
keymap("n", "}", "}zz", { desc = "Next paragraph and center" })

-- Terminal mode
keymap("t", "<C-n>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- macOS specific keybindings (these will work in GUI clients like NeoVide)
local is_mac = vim.loop.os_uname().sysname == "Darwin"
if is_mac then
  -- File operations
  keymap({ "i", "n", "v" }, "<D-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
  keymap("n", "<D-S-t>", "<cmd>e #<cr>", { desc = "Reopen last buffer" })

  -- Command palette and file navigation
  keymap("n", "<D-S-p>", "<cmd>Telescope commands<cr>", { desc = "Command palette" })
  keymap("n", "<D-p>", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
  keymap("i", "<D-p>", "<ESC><cmd>Telescope find_files<cr>", { desc = "Find files" })
  keymap("n", "<D-S-o>", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Go to symbol in file" })
  keymap("n", "<D-A-o>", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", { desc = "Go to symbol in workspace" })
  keymap("n", "<D-r>", "<cmd>Telescope oldfiles<cr>", { desc = "Recent files" })
  keymap("n", "<D-b>", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
  keymap("i", "<D-b>", "<ESC><cmd>Telescope buffers<cr>", { desc = "Buffers" })

  -- Search and replace
  keymap("n", "<D-f>", "<cmd>Telescope live_grep<cr>", { desc = "Search in files" })
  keymap("i", "<D-f>", "<ESC><cmd>Telescope live_grep<cr>", { desc = "Search in files" })
  keymap("n", "<D-S-f>", "<cmd>Telescope live_grep<cr>", { desc = "Search in files" })
  keymap("n", "<D-S-h>", ":%s/", { desc = "Replace" })
  keymap("n", "<S-F3>", "N", { desc = "Find previous" })

  -- Basic editing operations
  keymap("n", "<D-a>", "ggVG", { desc = "Select all" })
  keymap("i", "<D-a>", "<Esc>ggVG", { desc = "Select all" })
  keymap("v", "<D-x>", '"+x', { desc = "Cut" })
  keymap("v", "<D-c>", '"+y', { desc = "Copy" })
  keymap("n", "<D-v>", '"+p', { desc = "Paste" })
  keymap("i", "<D-v>", "<C-r>+", { desc = "Paste" })
  keymap("v", "<D-v>", '"+p', { desc = "Paste" })
  keymap("n", "<D-z>", "u", { desc = "Undo" })
  keymap("i", "<D-z>", "<Esc>u", { desc = "Undo" })
  keymap("n", "<D-y>", "<C-r>", { desc = "Redo" })
  keymap("i", "<D-y>", "<Esc><C-r>", { desc = "Redo" })

  -- Line operations
  keymap("n", "<D-S-k>", "dd", { desc = "Delete line" })
  keymap("i", "<D-S-k>", "<Esc>ddi", { desc = "Delete line" })
  keymap("n", "<D-Enter>", "o<Esc>", { desc = "Insert line below" })
  keymap("n", "<D-S-Enter>", "O<Esc>", { desc = "Insert line above" })
  keymap("i", "<D-Enter>", "<Esc>o", { desc = "Insert line below" })
  keymap("i", "<D-S-Enter>", "<Esc>O", { desc = "Insert line above" })

  -- Copy lines (Alt+Shift+Up/Down)
  keymap("n", "<A-S-Up>", "yyP", { desc = "Copy line up" })
  keymap("n", "<A-S-Down>", "yyp", { desc = "Copy line down" })
  keymap("v", "<A-S-Up>", "y`>pgv", { desc = "Copy selection up" })
  keymap("v", "<A-S-Down>", "y`<P", { desc = "Copy selection down" })

  -- Indentation
  keymap("n", "<D-]>", ">>", { desc = "Indent line" })
  keymap("n", "<D-[>", "<<", { desc = "Outdent line" })
  keymap("v", "<D-]>", ">gv", { desc = "Indent selection" })
  keymap("v", "<D-[>", "<gv", { desc = "Outdent selection" })
  keymap("i", "<D-]>", "<Esc>>>i", { desc = "Indent line" })
  keymap("i", "<D-[>", "<Esc><<i", { desc = "Outdent line" })

  -- Code navigation
  keymap("n", "<D-F12>", "<cmd>lua vim.lsp.buf.implementation()<cr>", { desc = "Go to implementation" })
  keymap("n", "<D-S-F12>", "<cmd>Telescope lsp_references<cr>", { desc = "Find all references" })
  keymap("n", "<D-A-F12>", "<cmd>lua vim.lsp.buf.hover()<cr>", { desc = "Peek definition" })

  -- Code actions and formatting
  keymap("n", "<D-S-a>", "<cmd>lua vim.lsp.buf.code_action()<cr>", { desc = "Quick fix" })
  keymap("n", "<D-S-A-f>", "<cmd>lua vim.lsp.buf.format()<cr>", { desc = "Format document" })
  keymap("v", "<D-S-A-f>", "<cmd>lua vim.lsp.buf.format()<cr>", { desc = "Format selection" })

  -- Window/Split management
  keymap("n", "<D-\\>", "<cmd>vsplit<cr>", { desc = "Split vertically" })
  keymap("n", "<D-S-\\>", "<cmd>split<cr>", { desc = "Split horizontally" })
  keymap("n", "<D-1>", "1<C-w>w", { desc = "Focus 1st window" })
  keymap("n", "<D-2>", "2<C-w>w", { desc = "Focus 2nd window" })
  keymap("n", "<D-3>", "3<C-w>w", { desc = "Focus 3rd window" })

  -- Panel toggles
  keymap("n", "<D-S-e>", "<cmd>Neotree focus<cr>", { desc = "Show Explorer" })
  keymap("n", "<D-S-g>", "<cmd>LazyGit<cr>", { desc = "Show Git" })
  keymap("n", "<D-S-d>", "<cmd>Telescope diagnostics<cr>", { desc = "Show Problems" })
  keymap("n", "<D-S-x>", "<cmd>Lazy<cr>", { desc = "Show Extensions (Lazy)" })

  -- Settings and configuration
  keymap("n", "<D-S-,>", "<cmd>Telescope keymaps<cr>", { desc = "Keyboard shortcuts" })
  keymap("n", "<D-A-t>", "<cmd>Telescope colorscheme<cr>", { desc = "Change theme" })

  -- Quick Fix / Diagnostics navigation
  keymap("n", "<D-S-F8>", "<cmd>lua vim.diagnostic.goto_prev()<cr>", { desc = "Previous problem" })

  -- Folding
  keymap("n", "<D-S-[>", "zM", { desc = "Fold all" })
  keymap("n", "<D-S-]>", "zR", { desc = "Unfold all" })
  keymap("n", "<D-A-[>", "zc", { desc = "Fold" })
  keymap("n", "<D-A-]>", "zo", { desc = "Unfold" })

  -- Comment
  keymap("n", "<D-/>", "gcc", { remap = true, desc = "Toggle comment" })
  keymap("v", "<D-/>", "gc", { remap = true, desc = "Toggle comment" })
  keymap("i", "<D-/>", "<esc>gcci", { remap = true, desc = "Toggle comment" })

  -- Tab navigation by number
  for i = 1, 9 do
    keymap("n", "<D-" .. i .. ">", "<cmd>BufferLineGoToBuffer " .. i .. "<CR>", { desc = "Go to tab " .. i })
    keymap("i", "<D-" .. i .. ">", "<Esc><cmd>BufferLineGoToBuffer " .. i .. "<CR>", { desc = "Go to tab " .. i })
  end
end

-- Map Tab to Ctrl+n and Shift+Tab to Ctrl+p in insert mode
vim.keymap.set("i", "<Tab>", "<C-n>", { remap = true })
vim.keymap.set("i", "<S-Tab>", "<C-p>", { remap = true })
