# Neovim LazyVim Custom Configuration

This repository contains my personal Neovim configuration built on top of [LazyVim](https://www.lazyvim.org/). The configuration emphasizes VSCode-like keybindings while maintaining NeoVim's powerful modal editing capabilities.

## 🛠️ Installation

1. Install [LazyVim](https://www.lazyvim.org/installation)
2. Copy `options.lua` to `~/.config/nvim/lua/config/options.lua`
3. Copy `keymaps.lua` to `~/.config/nvim/lua/config/keymaps.lua`
4. Restart Neovim

## 🚀 Features

### Core Settings
- **Leader Key**: `,` (comma) instead of default space
- **System Clipboard Integration**: Seamless copy/paste with system clipboard
- **Mouse Support**: Full mouse support enabled
- **Auto-reload**: Files automatically reload when changed externally
- **Smart Search**: Case-insensitive search with smart case sensitivity
- **Line Wrapping**: Enabled with visual line navigation

### File Management
- **Custom Backup Locations**: Organized swap, undo, and backup files in `~/.vim/` subdirectories
- **Persistent Undo**: 1000 levels of undo with persistent history
- **Smart Wildignore**: Excludes common build artifacts, dependencies, and version control files

## ⌨️ Keybindings

> **Leader Key**: `,` (comma)
> **LazyVim Leader**: `<space>` (default)

This configuration adds custom keybindings on top of LazyVim's defaults without any conflicts.

## Terminal Keybindings

These work in all environments (terminal and GUI).

### Productivity Features

| Keybinding | Mode | Description |
|------------|------|-------------|
| `F4` | Normal, Insert | Toggle paste mode |
| `,fef` | Normal | Format entire file (gg=G) |
| `,md` | Normal | Create parent directories for current file |
| `,Fc` | Normal | Find merge conflicts in file |

### Text Manipulation

| Keybinding | Mode | Description |
|------------|------|-------------|
| `,wu` | Normal | Uppercase word under cursor |
| `,wU` | Normal | Uppercase first character of word |
| `,wL` | Normal | Lowercase first character of word |

### Quick File Editing

| Keybinding | Mode | Description |
|------------|------|-------------|
| `,ew` | Normal | Edit new file in same directory |
| `,es` | Normal | Split with new file in same directory |
| `,ev` | Normal | Vertical split with new file in same directory |
| `,et` | Normal | New tab with file in same directory |

### Navigation Enhancements

| Keybinding | Mode | Description |
|------------|------|-------------|
| `Down` | Normal, Visual | Navigate by display line (gj) |
| `Up` | Normal, Visual | Navigate by display line (gk) |
| `n` | Normal | Next search result (centered) |
| `N` | Normal | Previous search result (centered) |
| `{` | Normal | Previous paragraph (centered) |
| `}` | Normal | Next paragraph (centered) |
| `Alt+Left` | Normal | Navigate back in jump list |
| `Alt+Right` | Normal | Navigate forward in jump list |

### Search & Replace

| Keybinding | Mode | Description |
|------------|------|-------------|
| `,Sf` | Normal | Start search (/) |
| `,Sr` | Normal | Start replace (:%s/) |
| `,hs` | Normal | Toggle search highlighting |
| `F3` | Normal | Find next occurrence |

### Line Operations

| Keybinding | Mode | Description |
|------------|------|-------------|
| `Alt+Up` | Normal, Insert, Visual | Move line/selection up |
| `Alt+Down` | Normal, Insert, Visual | Move line/selection down |

### Clipboard Operations

| Keybinding | Mode | Description |
|------------|------|-------------|
| `,Xx` | Visual | Cut to system clipboard |
| `,Xc` | Visual | Copy to system clipboard |

### Bookmarks

| Keybinding | Mode | Description |
|------------|------|-------------|
| `,mm` | Normal | Toggle bookmark at cursor |
| `,mn` | Normal | Jump to next bookmark |
| `,mp` | Normal | Jump to previous bookmark |

### Other

| Keybinding | Mode | Description |
|------------|------|-------------|
| `,oc` | Normal | Open Neovim config file |
| `Ctrl+n` | Terminal | Exit terminal mode |

## GUI/Neovide Keybindings (macOS)

These keybindings only work in GUI clients like Neovide and use the Command key (⌘).

### File Operations

| Keybinding | Mode | Description |
|------------|------|-------------|
| `⌘+s` | Normal, Insert, Visual | Save file |
| `⌘+Shift+t` | Normal | Reopen last closed buffer |

### File & Symbol Navigation

| Keybinding | Mode | Description |
|------------|------|-------------|
| `⌘+p` | Normal, Insert | Find files (Telescope) |
| `⌘+Shift+p` | Normal | Command palette |
| `⌘+b` | Normal, Insert | Browse buffers |
| `⌘+r` | Normal | Recent files |
| `⌘+Shift+o` | Normal | Go to symbol in file |
| `⌘+Alt+o` | Normal | Go to symbol in workspace |

### Search

| Keybinding | Mode | Description |
|------------|------|-------------|
| `⌘+f` | Normal, Insert | Search in files (live grep) |
| `⌘+Shift+f` | Normal | Search in files (alternative) |
| `⌘+Shift+h` | Normal | Find and replace |
| `Shift+F3` | Normal | Find previous |

### Editing

| Keybinding | Mode | Description |
|------------|------|-------------|
| `⌘+a` | Normal, Insert | Select all |
| `⌘+x` | Visual | Cut |
| `⌘+c` | Visual | Copy |
| `⌘+v` | Normal, Insert, Visual | Paste |
| `⌘+z` | Normal, Insert | Undo |
| `⌘+y` | Normal, Insert | Redo |
| `⌘+/` | Normal, Visual, Insert | Toggle comment |

### Line Operations

| Keybinding | Mode | Description |
|------------|------|-------------|
| `⌘+Shift+k` | Normal, Insert | Delete line |
| `⌘+Enter` | Normal, Insert | Insert line below |
| `⌘+Shift+Enter` | Normal, Insert | Insert line above |
| `Alt+Shift+Up` | Normal, Visual | Copy line/selection up |
| `Alt+Shift+Down` | Normal, Visual | Copy line/selection down |

### Indentation

| Keybinding | Mode | Description |
|------------|------|-------------|
| `⌘+]` | Normal, Visual, Insert | Indent |
| `⌘+[` | Normal, Visual, Insert | Outdent |

### Code Navigation & Actions

| Keybinding | Mode | Description |
|------------|------|-------------|
| `⌘+F12` | Normal | Go to implementation |
| `⌘+Shift+F12` | Normal | Find all references |
| `⌘+Alt+F12` | Normal | Hover (peek definition) |
| `⌘+Shift+a` | Normal | Code action (quick fix) |
| `⌘+Shift+Alt+f` | Normal, Visual | Format document/selection |

### Window Management

| Keybinding | Mode | Description |
|------------|------|-------------|
| `⌘+\` | Normal | Split vertically |
| `⌘+Shift+\` | Normal | Split horizontally |
| `⌘+1` to `⌘+3` | Normal | Focus window 1-3 |

### Tab Navigation

| Keybinding | Mode | Description |
|------------|------|-------------|
| `⌘+1` to `⌘+9` | Normal, Insert | Go to buffer/tab 1-9 |

### Panel Toggles

| Keybinding | Mode | Description |
|------------|------|-------------|
| `⌘+Shift+e` | Normal | Focus file explorer |
| `⌘+Shift+g` | Normal | Open LazyGit |
| `⌘+Shift+d` | Normal | Show diagnostics |
| `⌘+Shift+x` | Normal | Open Lazy (plugin manager) |

### Settings & Tools

| Keybinding | Mode | Description |
|------------|------|-------------|
| `⌘+Shift+,` | Normal | Show keyboard shortcuts |
| `⌘+Alt+t` | Normal | Change color theme |
| `⌘+Shift+F8` | Normal | Previous diagnostic |

### Code Folding

| Keybinding | Mode | Description |
|------------|------|-------------|
| `⌘+Shift+[` | Normal | Fold all |
| `⌘+Shift+]` | Normal | Unfold all |
| `⌘+Alt+[` | Normal | Fold current |
| `⌘+Alt+]` | Normal | Unfold current |

