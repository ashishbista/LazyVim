# LazyVim Keybindings Cheatsheet

> **Leader**: `<space>` | **Local Leader**: `\`
>
> **Tip**: Press `<space>` and wait to see all available keymaps with which-key!

## 🚀 Essential Navigation

### Window Management
| Key | Description |
|-----|-------------|
| `<C-h>` | Go to left window |
| `<C-j>` | Go to lower window |
| `<C-k>` | Go to upper window |
| `<C-l>` | Go to right window |
| `<leader>-` | Split window below |
| `<leader>\|` | Split window right |
| `<leader>wd` | Delete window |
| `<leader>wm` | Toggle maximize |

### Buffer Navigation
| Key | Description |
|-----|-------------|
| `<S-h>` | Previous buffer |
| `<S-l>` | Next buffer |
| `[b` | Previous buffer |
| `]b` | Next buffer |
| `<leader>bb` | Switch to other buffer |
| `<leader>bd` | Delete buffer |
| `<leader>bo` | Delete other buffers |
| `<leader>bp` | Toggle pin |

### Tab Management
| Key | Description |
|-----|-------------|
| `<leader><tab><tab>` | New tab |
| `<leader><tab>d` | Close tab |
| `<leader><tab>[` | Previous tab |
| `<leader><tab>]` | Next tab |
| `<leader><tab>f` | First tab |
| `<leader><tab>l` | Last tab |

## 🔍 Search & Find

### File Finding
| Key | Description |
|-----|-------------|
| `<leader><space>` | Find files (root) |
| `<leader>ff` | Find files (root) |
| `<leader>fF` | Find files (cwd) |
| `<leader>fr` | Recent files |
| `<leader>fR` | Recent files (cwd) |
| `<leader>fb` | Buffers |
| `<leader>fg` | Git files |
| `<leader>fc` | Find config file |

### Text Search
| Key | Description |
|-----|-------------|
| `<leader>/` | Grep (root dir) |
| `<leader>sg` | Grep (root dir) |
| `<leader>sG` | Grep (cwd) |
| `<leader>sw` | Search word (root) |
| `<leader>sW` | Search word (cwd) |
| `<leader>sb` | Buffer lines |
| `<leader>sB` | Grep open buffers |
| `n` | Next search result |
| `N` | Previous search result |

### Special Searches
| Key | Description |
|-----|-------------|
| `<leader>sk` | Keymaps |
| `<leader>sh` | Help pages |
| `<leader>sc` | Commands |
| `<leader>sH` | Highlights |
| `<leader>sj` | Jumps |
| `<leader>sm` | Marks |
| `<leader>s"` | Registers |

## 💻 LSP & Code

### Go To
| Key | Description |
|-----|-------------|
| `gd` | Go to definition |
| `gr` | References |
| `gI` | Go to implementation |
| `gy` | Go to type definition |
| `gD` | Go to declaration |
| `K` | Hover documentation |
| `gK` | Signature help |

### Code Actions
| Key | Description |
|-----|-------------|
| `<leader>ca` | Code action |
| `<leader>cr` | Rename |
| `<leader>cf` | Format |
| `<leader>cl` | LSP info |
| `<leader>cd` | Line diagnostics |
| `<leader>cc` | Run codelens |
| `<leader>cR` | Rename file |
| `<leader>cs` | Document symbols |

### Diagnostics
| Key | Description |
|-----|-------------|
| `]d` | Next diagnostic |
| `[d` | Previous diagnostic |
| `]e` | Next error |
| `[e` | Previous error |
| `]w` | Next warning |
| `[w` | Previous warning |
| `<leader>sd` | Search diagnostics |
| `<leader>xd` | Diagnostics (Trouble) |

## 📁 File Explorer

| Key | Description |
|-----|-------------|
| `<leader>e` | Explorer (root dir) |
| `<leader>E` | Explorer (cwd) |
| `<leader>fe` | Explorer (root dir) |
| `<leader>fE` | Explorer (cwd) |

## 🔧 Git

| Key | Description |
|-----|-------------|
| `<leader>gg` | LazyGit (root) |
| `<leader>gG` | LazyGit (cwd) |
| `<leader>gb` | Git blame line |
| `<leader>gB` | Git browse |
| `<leader>gs` | Git status |
| `<leader>gS` | Git stash |
| `<leader>gd` | Git diff |

## 📝 Editing

### Basic Operations
| Key | Description |
|-----|-------------|
| `<C-s>` | Save file |
| `<leader>fn` | New file |
| `<leader>qq` | Quit all |
| `u` | Undo |
| `<C-r>` | Redo |

### Line Operations
| Key | Description |
|-----|-------------|
| `<A-j>` | Move line down |
| `<A-k>` | Move line up |
| `gcc` | Comment line |
| `gc` | Comment (visual) |
| `gco` | Add comment below |
| `gcO` | Add comment above |

### Text Objects (with Flash)
| Key | Description |
|-----|-------------|
| `s` | Flash jump |
| `S` | Flash treesitter |
| `r` | Remote flash |
| `R` | Treesitter search |

## ⚙️ UI Toggles

| Key | Description |
|-----|-------------|
| `<leader>uf` | Toggle format (global) |
| `<leader>uF` | Toggle format (buffer) |
| `<leader>us` | Toggle spelling |
| `<leader>uw` | Toggle wrap |
| `<leader>ul` | Toggle line numbers |
| `<leader>uL` | Toggle relative numbers |
| `<leader>ud` | Toggle diagnostics |
| `<leader>uc` | Toggle conceal |
| `<leader>uh` | Toggle inlay hints |
| `<leader>uT` | Toggle treesitter highlight |
| `<leader>ub` | Toggle background |
| `<leader>ug` | Toggle indent guides |

## 🧰 Tools & Utilities

### Terminal
| Key | Description |
|-----|-------------|
| `<C-/>` | Terminal (root dir) |
| `<leader>ft` | Terminal (root dir) |
| `<leader>fT` | Terminal (cwd) |
| `<C-/>` | Hide terminal (in terminal) |

### Session Management
| Key | Description |
|-----|-------------|
| `<leader>qs` | Restore session |
| `<leader>ql` | Restore last session |
| `<leader>qd` | Don't save session |
| `<leader>qS` | Select session |

### Plugin Management
| Key | Description |
|-----|-------------|
| `<leader>l` | Lazy (plugin manager) |
| `<leader>cm` | Mason (LSP installer) |
| `<leader>L` | LazyVim changelog |

### Notifications
| Key | Description |
|-----|-------------|
| `<leader>un` | Dismiss all notifications |
| `<leader>sn` | Notification history |
| `<leader>snd` | Dismiss all (Noice) |
| `<leader>snh` | Noice history |

## 🎯 Quick Reference

### Most Used Combos
- **Find & Edit**: `<space><space>` → find file → `<Enter>` to open
- **Search in Project**: `<space>/` → type search → navigate with `<C-j/k>`
- **Quick Buffer Switch**: `<space>,` → select buffer
- **Code Navigation**: `gd` → definition, `<C-o>` to go back
- **Multi-cursor**: `s` → type chars → `<Enter>` to confirm → `n` for next

### Power User Tips
1. **Which-key**: Press `<space>` and wait to see all options
2. **Telescope**: Most searches support:
   - `<C-x>` - Open in split
   - `<C-v>` - Open in vsplit
   - `<C-t>` - Open in tab
   - `<C-q>` - Send to quickfix
3. **Visual Mode**: Most normal mode commands work in visual mode
4. **Repeat**: `.` repeats the last change

## 📦 Common Plugin Extras

### Test Running (`<leader>t`)
| Key | Description |
|-----|-------------|
| `<leader>tr` | Run nearest test |
| `<leader>tt` | Run file tests |
| `<leader>tT` | Run all tests |
| `<leader>tl` | Run last test |
| `<leader>ts` | Toggle summary |

### Debug (`<leader>d`)
| Key | Description |
|-----|-------------|
| `<leader>db` | Toggle breakpoint |
| `<leader>dc` | Continue |
| `<leader>di` | Step into |
| `<leader>do` | Step out |
| `<leader>dO` | Step over |

### Surround (mini.surround)
| Key | Description |
|-----|-------------|
| `gsa` | Add surrounding |
| `gsd` | Delete surrounding |
| `gsr` | Replace surrounding |
| `gsf` | Find surrounding |
| `gsh` | Highlight surrounding |

### Harpoon
| Key | Description |
|-----|-------------|
| `<leader>H` | Add file to Harpoon |
| `<leader>h` | Harpoon menu |
| `<leader>1-5` | Jump to Harpoon file 1-5 |

## 🎨 UI Extras

### Trouble
| Key | Description |
|-----|-------------|
| `<leader>xx` | Diagnostics |
| `<leader>xX` | Buffer diagnostics |
| `<leader>xs` | Symbols |
| `<leader>xl` | Location list |
| `<leader>xq` | Quickfix list |

### Todo Comments
| Key | Description |
|-----|-------------|
| `<leader>st` | Search todos |
| `<leader>sT` | Search TODO/FIX/FIXME |
| `<leader>xt` | Todo (Trouble) |
| `]t` | Next todo |
| `[t` | Previous todo |

---

💡 **Pro Tip**: Install LazyVim extras with `:LazyExtras` for language-specific keybindings!
