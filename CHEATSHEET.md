# Comprehensive Vim Cheatsheet

## Vim Modes

| Mode | Description | Enter Mode |
|------|-------------|------------|
| **Normal** | Default mode for navigation and commands | `<Esc>` |
| **Insert** | Text insertion mode | `i`, `a`, `o`, `I`, `A`, `O` |
| **Visual** | Text selection mode | `v`, `V`, `<C-v>` |
| **Command** | Execute Ex commands | `:` |
| **Replace** | Replace text under cursor | `R` |

## Basic Movement

### Character Movement
| Command | Description |
|---------|-------------|
| `h` | Move left |
| `j` | Move down |
| `k` | Move up |
| `l` | Move right |
| `gj` | Move down by display line |
| `gk` | Move up by display line |

### Word Movement
| Command | Description |
|---------|-------------|
| `w` | Next word (beginning) |
| `W` | Next WORD (space-delimited) |
| `e` | End of word |
| `E` | End of WORD |
| `b` | Previous word |
| `B` | Previous WORD |
| `ge` | End of previous word |
| `gE` | End of previous WORD |

### Line Movement
| Command | Description |
|---------|-------------|
| `0` | Beginning of line |
| `^` | First non-blank character |
| `$` | End of line |
| `g_` | Last non-blank character |
| `+` | First character of next line |
| `-` | First character of previous line |

### Screen Movement
| Command | Description |
|---------|-------------|
| `H` | Top of screen |
| `M` | Middle of screen |
| `L` | Bottom of screen |
| `zt` | Scroll current line to top |
| `zz` | Scroll current line to center |
| `zb` | Scroll current line to bottom |

### File Movement
| Command | Description |
|---------|-------------|
| `gg` | Beginning of file |
| `G` | End of file |
| `{n}G` | Go to line {n} |
| `:{n}` | Go to line {n} |
| `%` | Matching bracket/parenthesis |

### Page Movement
| Command | Description |
|---------|-------------|
| `<C-f>` | Page down (forward) |
| `<C-b>` | Page up (backward) |
| `<C-d>` | Half page down |
| `<C-u>` | Half page up |
| `<C-e>` | Scroll down one line |
| `<C-y>` | Scroll up one line |

## Insert Mode

### Entering Insert Mode
| Command | Description |
|---------|-------------|
| `i` | Insert before cursor |
| `I` | Insert at beginning of line |
| `a` | Append after cursor |
| `A` | Append at end of line |
| `o` | Open line below |
| `O` | Open line above |
| `s` | Delete character and insert |
| `S` | Delete line and insert |
| `C` | Delete to end of line and insert |
| `cc` | Delete line and insert |

### Insert Mode Commands
| Command | Description |
|---------|-------------|
| `<C-h>` | Delete character before cursor |
| `<C-w>` | Delete word before cursor |
| `<C-u>` | Delete to beginning of line |
| `<C-t>` | Indent current line |
| `<C-d>` | Unindent current line |
| `<C-n>` | Next completion |
| `<C-p>` | Previous completion |
| `<C-r>{reg}` | Insert from register |
| `<C-o>` | Execute one normal mode command |

## Editing Commands

### Delete Operations
| Command | Description |
|---------|-------------|
| `x` | Delete character under cursor |
| `X` | Delete character before cursor |
| `d{motion}` | Delete with motion |
| `dd` | Delete line |
| `D` | Delete to end of line |
| `J` | Join line with next |
| `gJ` | Join without space |

### Change Operations
| Command | Description |
|---------|-------------|
| `r{char}` | Replace character |
| `R` | Enter replace mode |
| `c{motion}` | Change with motion |
| `cc` | Change entire line |
| `C` | Change to end of line |
| `s` | Substitute character |
| `S` | Substitute line |

### Copy and Paste
| Command | Description |
|---------|-------------|
| `y{motion}` | Yank (copy) with motion |
| `yy` | Yank line |
| `Y` | Yank line (same as yy) |
| `p` | Paste after cursor/line |
| `P` | Paste before cursor/line |
| `gp` | Paste and move cursor after |
| `gP` | Paste and move cursor after (before) |
| `"{reg}y` | Yank to register |
| `"{reg}p` | Paste from register |

### Undo and Redo
| Command | Description |
|---------|-------------|
| `u` | Undo |
| `U` | Undo all changes on line |
| `<C-r>` | Redo |
| `g+` | Go to newer state |
| `g-` | Go to older state |
| `:earlier {time}` | Go back in time |
| `:later {time}` | Go forward in time |

## Text Objects

### Inner/Around Objects
| Command | Description |
|---------|-------------|
| `iw` / `aw` | Inner/around word |
| `iW` / `aW` | Inner/around WORD |
| `is` / `as` | Inner/around sentence |
| `ip` / `ap` | Inner/around paragraph |
| `i"` / `a"` | Inner/around double quotes |
| `i'` / `a'` | Inner/around single quotes |
| `i`  / `a`  | Inner/around backticks |
| `i(` / `a(` | Inner/around parentheses |
| `i[` / `a[` | Inner/around brackets |
| `i{` / `a{` | Inner/around braces |
| `i<` / `a<` | Inner/around angle brackets |
| `it` / `at` | Inner/around tag |

### Using Text Objects
| Example | Description |
|---------|-------------|
| `diw` | Delete inner word |
| `ci"` | Change inside quotes |
| `ya(` | Yank around parentheses |
| `vi{` | Visual select inside braces |

## Visual Mode

### Visual Mode Types
| Command | Description |
|---------|-------------|
| `v` | Character-wise visual |
| `V` | Line-wise visual |
| `<C-v>` | Block-wise visual |
| `gv` | Reselect last selection |

### Visual Mode Commands
| Command | Description |
|---------|-------------|
| `o` | Move to other end of selection |
| `O` | Move to other corner (block) |
| `>` | Indent selection |
| `<` | Unindent selection |
| `~` | Toggle case |
| `u` | Lowercase |
| `U` | Uppercase |
| `=` | Auto-indent |
| `gq` | Format text |
| `J` | Join lines |

## Search and Replace

### Search Commands
| Command | Description |
|---------|-------------|
| `/{pattern}` | Search forward |
| `?{pattern}` | Search backward |
| `n` | Next match |
| `N` | Previous match |
| `*` | Search word under cursor forward |
| `#` | Search word under cursor backward |
| `g*` | Search partial word forward |
| `g#` | Search partial word backward |
| `gd` | Go to local declaration |
| `gD` | Go to global declaration |

### Search Options
| Command | Description |
|---------|-------------|
| `\c` | Case insensitive (in pattern) |
| `\C` | Case sensitive (in pattern) |
| `:set ignorecase` | Ignore case globally |
| `:set smartcase` | Smart case matching |
| `:set hlsearch` | Highlight matches |
| `:noh` | Clear highlights |

### Replace Commands
| Command | Description |
|---------|-------------|
| `:s/old/new/` | Replace first on line |
| `:s/old/new/g` | Replace all on line |
| `:%s/old/new/g` | Replace all in file |
| `:%s/old/new/gc` | Replace with confirmation |
| `:5,10s/old/new/g` | Replace in lines 5-10 |
| `:'<,'>s/old/new/g` | Replace in visual selection |

### Replace Flags
| Flag | Description |
|------|-------------|
| `g` | Global (all occurrences) |
| `c` | Confirm each |
| `i` | Case insensitive |
| `I` | Case sensitive |
| `n` | Count matches only |

## Registers

### Special Registers
| Register | Description |
|----------|-------------|
| `"` | Unnamed register (default) |
| `0` | Yank register |
| `1-9` | Delete registers (history) |
| `a-z` | Named registers |
| `A-Z` | Append to named registers |
| `+` | System clipboard |
| `*` | Primary selection (X11) |
| `.` | Last inserted text |
| `:` | Last command |
| `/` | Last search pattern |
| `%` | Current filename |
| `#` | Alternate filename |
| `_` | Black hole register |

### Register Commands
| Command | Description |
|---------|-------------|
| `:reg` | Show all registers |
| `"{reg}` | Use register for next operation |
| `<C-r>{reg}` | Insert register (insert mode) |
| `:let @{reg}=` | Clear register |

## Marks and Jumps

### Setting Marks
| Command | Description |
|---------|-------------|
| `m{a-z}` | Set local mark |
| `m{A-Z}` | Set global mark |
| `:marks` | List all marks |
| `:delmarks {mark}` | Delete mark |
| `:delmarks!` | Delete all local marks |

### Jumping to Marks
| Command | Description |
|---------|-------------|
| `'{mark}` | Jump to mark line start |
| `` `{mark} `` | Jump to mark position |
| `''` | Jump to previous jump line |
| ``` `` ``` | Jump to previous jump position |
| `'.` | Jump to last change |
| `` `. `` | Jump to last change position |

### Jump List
| Command | Description |
|---------|-------------|
| `<C-o>` | Jump backward |
| `<C-i>` | Jump forward |
| `:jumps` | Show jump list |
| `g;` | Previous change position |
| `g,` | Next change position |

## Macros

### Recording and Playing
| Command | Description |
|---------|-------------|
| `q{reg}` | Start recording macro |
| `q` | Stop recording |
| `@{reg}` | Play macro |
| `@@` | Repeat last macro |
| `{n}@{reg}` | Play macro {n} times |
| `:reg {reg}` | View macro contents |

### Macro Tips
| Command | Description |
|---------|-------------|
| `qaq` | Clear register a |
| `:let @a='...'` | Set macro content |
| `"ap` | Paste macro for editing |
| `"ayy` | Yank edited macro back |

## Windows

### Window Commands
| Command | Description |
|---------|-------------|
| `<C-w>s` | Split horizontally |
| `<C-w>v` | Split vertically |
| `<C-w>c` | Close window |
| `<C-w>o` | Close other windows |
| `<C-w>w` | Next window |
| `<C-w>p` | Previous window |
| `<C-w>h/j/k/l` | Navigate windows |
| `<C-w>H/J/K/L` | Move window |
| `<C-w>=` | Equal size windows |
| `<C-w>_` | Maximize height |
| `<C-w>|` | Maximize width |
| `<C-w>+/-` | Increase/decrease height |
| `<C-w>>/<` | Increase/decrease width |

## Tabs

### Tab Commands
| Command | Description |
|---------|-------------|
| `:tabnew` | New tab |
| `:tabc` | Close tab |
| `:tabo` | Close other tabs |
| `gt` | Next tab |
| `gT` | Previous tab |
| `{n}gt` | Go to tab {n} |
| `:tabs` | List tabs |
| `:tabm {n}` | Move tab to position |

## Folding

### Fold Commands
| Command | Description |
|---------|-------------|
| `zf{motion}` | Create fold |
| `zd` | Delete fold |
| `zo` | Open fold |
| `zc` | Close fold |
| `za` | Toggle fold |
| `zr` | Open one fold level |
| `zm` | Close one fold level |
| `zR` | Open all folds |
| `zM` | Close all folds |
| `zj` | Next fold |
| `zk` | Previous fold |

### Fold Options
| Command | Description |
|---------|-------------|
| `:set foldmethod=indent` | Fold by indent |
| `:set foldmethod=syntax` | Fold by syntax |
| `:set foldmethod=marker` | Fold by markers |
| `:set foldlevel={n}` | Set fold level |

## Command Line

### Ex Commands
| Command | Description |
|---------|-------------|
| `:w` | Write (save) |
| `:q` | Quit |
| `:wq` | Write and quit |
| `:x` | Write and quit (if changed) |
| `:q!` | Quit without saving |
| `:e {file}` | Edit file |
| `:r {file}` | Read file into buffer |
| `:!{cmd}` | Execute shell command |
| `:.!{cmd}` | Filter line through command |
| `:%!{cmd}` | Filter buffer through command |

### Ranges
| Range | Description |
|-------|-------------|
| `:5` | Line 5 |
| `:5,10` | Lines 5 to 10 |
| `:.` | Current line |
| `:$` | Last line |
| `:%` | Entire file |
| `:'<,'>` | Visual selection |
| `:.,$` | Current to last line |
| `:.-5,.+5` | 5 lines around cursor |

## Settings

### Common Settings
| Command | Description |
|---------|-------------|
| `:set number` | Show line numbers |
| `:set relativenumber` | Relative line numbers |
| `:set wrap` | Wrap long lines |
| `:set expandtab` | Use spaces for tabs |
| `:set tabstop=4` | Tab width |
| `:set shiftwidth=4` | Indent width |
| `:set autoindent` | Auto indent |
| `:set clipboard=unnamedplus` | Use system clipboard |
| `:set spell` | Enable spell checking |

### View Settings
| Command | Description |
|---------|-------------|
| `:set` | Show changed settings |
| `:set all` | Show all settings |
| `:set {option}?` | Show specific setting |
| `:set {option}&` | Reset to default |

## Advanced Features

### Text Manipulation
| Command | Description |
|---------|-------------|
| `guu` | Lowercase line |
| `gUU` | Uppercase line |
| `g~~` | Toggle case line |
| `guw` | Lowercase word |
| `gUw` | Uppercase word |
| `g~w` | Toggle case word |
| `>>` | Indent line |
| `<<` | Unindent line |
| `==` | Auto-indent line |

### Special Commands
| Command | Description |
|---------|-------------|
| `.` | Repeat last change |
| `&` | Repeat last substitute |
| `;` | Repeat last f/t motion |
| `,` | Repeat last f/t motion reverse |
| `@:` | Repeat last command |
| `gi` | Insert at last insert position |
| `gv` | Reselect last visual selection |
| `g&` | Repeat last substitute globally |

### Spell Checking
| Command | Description |
|---------|-------------|
| `]s` | Next misspelled word |
| `[s` | Previous misspelled word |
| `z=` | Suggest corrections |
| `zg` | Add word to dictionary |
| `zw` | Mark word as wrong |
| `zug` | Undo add word |

### Completion (Insert Mode)
| Command | Description |
|---------|-------------|
| `<C-n>` | Next completion |
| `<C-p>` | Previous completion |
| `<C-x><C-f>` | Filename completion |
| `<C-x><C-l>` | Line completion |
| `<C-x><C-o>` | Omni completion |
| `<C-x><C-k>` | Dictionary completion |
| `<C-x><C-]>` | Tag completion |

## Quick Tips

### Productivity Shortcuts
- `ci"` - Change inside quotes
- `da(` - Delete around parentheses
- `yiw` - Yank inner word
- `vap` - Visual select paragraph
- `>i{` - Indent inside braces
- `<a(` - Unindent around parentheses

### Common Workflows
- `ggVG` - Select entire file
- `:%s/\s\+$//` - Remove trailing spaces
- `:g/pattern/d` - Delete lines matching pattern
- `:v/pattern/d` - Delete lines not matching pattern
- `qa...q` then `@a` - Record and play macro
- `:norm @a` - Run macro on selected lines

### Buffer Management
| Command | Description |
|---------|-------------|
| `:ls` | List buffers |
| `:b {n}` | Go to buffer {n} |
| `:bn` | Next buffer |
| `:bp` | Previous buffer |
| `:bd` | Delete buffer |
| `:bufdo {cmd}` | Run command on all buffers |

Remember: Vim is about composing commands. Most commands follow the pattern: `[count][operator][motion/text-object]`
