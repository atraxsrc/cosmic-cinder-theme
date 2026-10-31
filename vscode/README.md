# Cosmic Cinder for Cursor

Colour theme for [Cursor](https://cursor.com) from the COSMIC
[Cinder](https://github.com/atraxsrc/cosmic-cinder-theme) rice: **Cosmic Cinder**, dark
only. It is a plain VS Code theme extension, so VS Code and VSCodium take it
too.

## Install

```bash
./vscode/install.sh                # Cursor
./vscode/install.sh code codium    # VS Code / VSCodium instead
```

It packs this folder into `vscode/cosmic-cinder-theme-<version>.vsix` and installs
that with the editor's CLI (`cursor --install-extension`), so the theme is
listed under Extensions and running the script again updates it. Then press
<kbd>Ctrl</kbd>+<kbd>K</kbd> <kbd>Ctrl</kbd>+<kbd>T</kbd> and pick **Cosmic Cinder**.

No CLI on the PATH (an AppImage, say): the script still builds the `.vsix`;
install it from Extensions → `...` → **Install from VSIX**.

Cinder has no light half, so there is nothing for COSMIC's Dark / Light toggle to
switch to; leave `window.autoDetectColorScheme` off, or pair it with another
rice's light theme in `workbench.preferredLightColorTheme`.

## What it colours

Code is coloured the way Neovim is in the rice (`nvim/colors/cinder.lua`):

| Role | Cinder |
|------|----|
| Keywords, tags | ![#CC6528](https://placehold.co/12x12/cc6528/cc6528.png) `#CC6528` |
| Functions, tag attributes | ![#C6C4B0](https://placehold.co/12x12/C9C2B4/C9C2B4.png) `#C6C4B0` |
| Strings | ![#A5A297](https://placehold.co/12x12/9FA5A9/9FA5A9.png) `#A5A297` |
| Numbers, constants | ![#E19E74](https://placehold.co/12x12/D87C4A/D87C4A.png) `#E19E74` |
| Types, classes, modules | ![#90947A](https://placehold.co/12x12/90947a/90947a.png) `#90947A` |
| Imports, macros, decorators, escapes, `this` / `self` | ![#AC7339](https://placehold.co/12x12/9D7E6F/9D7E6F.png) `#AC7339` |
| Parameters (italic) | ![#A4A4A4](https://placehold.co/12x12/A5AEB4/A5AEB4.png) `#A4A4A4` |
| Operators, punctuation | ![#8A8575](https://placehold.co/12x12/7F7F7F/7F7F7F.png) `#8A8575` |
| Comments (italic) | ![#626A78](https://placehold.co/12x12/565D60/565D60.png) `#626A78` |
| Accent | ![#CC6528](https://placehold.co/12x12/cc6528/cc6528.png) `#CC6528` |
| Errors, deleted, conflicts | ![#C75E57](https://placehold.co/12x12/DE6145/DE6145.png) `#C75E57` |

The workbench takes the window colour of the rice's `cosmic/Cinder.ron` for the
editor, side bars, panel, title and status bar, the container colours for
menus, hovers, inputs and the command palette, and the orange accent for the
active tab line, buttons, badges and the menu highlight. Button hover is the
lighter orange ![#D97A3F](https://placehold.co/12x12/d97a3f/d97a3f.png) `#D97A3F`. The integrated terminal uses the rice's COSMIC
Terminal scheme (`cosmic-term/`), so command output looks the same as in
COSMIC Terminal.

Cursor's own panels (Agent, chat, inline diffs) have no colour keys of their
own. Cursor builds them from standard ones, and the theme sets those: the
button colour is the agent's accent, the side bar and panel colours are its
surfaces, the diff colours are its accept / reject highlights, and the
terminal's `blue` slot colours its links.

## Contrast

Text is at least 4.5:1 on the window background and on menus and hovers,
comments and line numbers at least 3:1. Orange ![#CC6528](https://placehold.co/12x12/cc6528/cc6528.png) `#CC6528` is 4.9:1 on the window background and 4.5:1 on the
container colour ![#1A1A1E](https://placehold.co/12x12/1a1a1e/1a1a1e.png) `#1A1A1E`, so it stays the same colour everywhere, the
match highlight in the suggest and hover widgets included. Keywords on the
highlighted current line are 4.1:1; comments dip under 3:1 there.
