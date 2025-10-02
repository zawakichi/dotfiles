# Custom Terminal Color Palette

Iceberg-inspired modern terminal theme with custom gradient colors.

## Gradient Colors (Generic Gradient)

| Color | Hex Code | Usage |
|-------|----------|-------|
| 🎨 Cyan | `#44d5c8` | Primary accent, session name, active pane border |
| 🎨 Light Cyan | `#5be0ba` | Username, git branch, secondary elements |
| 🎨 Mint | `#7deaa8` | Hostname separator, active window |
| 🎨 Light Green | `#a3f193` | Date display |
| 🎨 Yellow-Green | `#cdf680` | Directory path, time display |
| 🎨 Yellow | `#f9f871` | Command prompt, hostname |

## Background Colors (Iceberg-inspired)

| Color | Hex Code | Usage |
|-------|----------|-------|
| 🌑 Dark Blue | `#161821` | Main background, status bar |
| 🌑 Darker Blue | `#1e2132` | Inactive pane borders |
| 🌫️ Blue Gray | `#6b7089` | Inactive window text |
| ☁️ Light Gray | `#c6c8d1` | Main text color |

## Visual Design

### Zsh Prompt
```
╭─username@hostname ~/path/to/dir  branch
╰─❯
```

- Box-drawing characters for modern look
- Gradient flow: cyan → mint → yellow-green → yellow
- Git branch with icon
- Multi-line prompt for readability

### Tmux Status Bar
```
 SESSION | window1 | window2 [active] | window3 | 2025-10-01 | 14:30:00 |  hostname
```

- Gradient segments for visual hierarchy
- Active window highlighted with mint color
- Powerline-style separators
- Icon support (session, hostname)

## Terminal Emulator Settings

For best results, configure your terminal emulator:

### iTerm2
1. Preferences → Profiles → Window
2. Set transparency: 10-20%
3. Enable blur: Yes
4. Background color: `#161821`

### Alacritty
```yaml
window:
  opacity: 0.85

colors:
  primary:
    background: '#161821'
    foreground: '#c6c8d1'
```

### macOS Terminal
1. Preferences → Profiles
2. Window → Background → Opacity: 85-90%
3. Background color: `#161821`

## Installation

1. Apply zsh configuration:
   ```bash
   source ~/.zshrc
   ```

2. Apply tmux configuration:
   ```bash
   tmux source-file ~/.tmux.conf
   ```

3. For tmux changes to take effect in existing sessions:
   - Press `Ctrl+a` then `r` (reload config)
   - Or restart tmux: `tmux kill-server && tmux`

## Optional Enhancements

### Install plugins for better experience:
```bash
brew install zsh-syntax-highlighting zsh-autosuggestions
```

### Font recommendations:
- JetBrains Mono Nerd Font
- Fira Code Nerd Font
- Hack Nerd Font

These fonts include icons and ligatures for the best visual experience.
