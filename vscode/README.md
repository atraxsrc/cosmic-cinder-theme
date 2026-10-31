# Cosmic Cinder / Cosmic Cinder Day for Cursor

Colour themes for [Cursor](https://cursor.com) from the COSMIC
[Cinder](https://github.com/atraxsrc/cosmic-cinder-theme) rice and its light half
[Cinder Day](https://github.com/atraxsrc/cosmic-cinderday-theme): **Cosmic Cinder** and **Cosmic Cinder Day** in one
extension. It is a plain VS Code theme extension, so VS Code and VSCodium
take it too. The same extension ships in both repos.

## Install

```bash
./vscode/install.sh                # Cursor
./vscode/install.sh code codium    # VS Code / VSCodium instead
```

It packs this folder into `vscode/cosmic-cinder-theme-<version>.vsix` and installs
that with the editor's CLI (`cursor --install-extension`), so the theme is
listed under Extensions and running the script again updates it. Then press
<kbd>Ctrl</kbd>+<kbd>K</kbd> <kbd>Ctrl</kbd>+<kbd>T</kbd> and pick **Cosmic Cinder** or **Cosmic Cinder Day**.

No CLI on the PATH (an AppImage, say): the script still builds the `.vsix`;
install it from Extensions → `...` → **Install from VSIX**.

## Follow COSMIC's Dark / Light toggle

COSMIC tells apps which mode is on through its desktop portal. With these
lines in Cursor's `settings.json` (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> →
**Preferences: Open User Settings (JSON)**), Cursor switches between the two
themes along with the desktop:

```jsonc
"window.autoDetectColorScheme": true,
"workbench.preferredDarkColorTheme": "Cosmic Cinder",
"workbench.preferredLightColorTheme": "Cosmic Cinder Day"
```

## What it colours

Code is coloured the way Neovim is in the rice (`nvim/colors/*.lua`):

| Role | Cinder | Cinder Day |
|------|---|---|
| Keywords, tags | ![#CC6528](https://placehold.co/12x12/cc6528/cc6528.png) `#CC6528` | ![#A33D00](https://placehold.co/12x12/a33d00/a33d00.png) `#A33D00` |
| Functions, tag attributes | ![#C6C4B0](https://placehold.co/12x12/c6c4b0/c6c4b0.png) `#C6C4B0` | ![#62604C](https://placehold.co/12x12/62604c/62604c.png) `#62604C` |
| Strings | ![#A5A297](https://placehold.co/12x12/a5a297/a5a297.png) `#A5A297` | ![#605D52](https://placehold.co/12x12/605d52/605d52.png) `#605D52` |
| Numbers, constants | ![#E19E74](https://placehold.co/12x12/e19e74/e19e74.png) `#E19E74` | ![#8F4D23](https://placehold.co/12x12/8f4d23/8f4d23.png) `#8F4D23` |
| Types, classes, modules | ![#90947A](https://placehold.co/12x12/90947a/90947a.png) `#90947A` | ![#5F5959](https://placehold.co/12x12/5f5959/5f5959.png) `#5F5959` |
| Imports, macros, decorators, escapes, `this` / `self` | ![#AC7339](https://placehold.co/12x12/ac7339/ac7339.png) `#AC7339` | ![#894F16](https://placehold.co/12x12/894f16/894f16.png) `#894F16` |
| Parameters (italic) | ![#A4A4A4](https://placehold.co/12x12/a4a4a4/a4a4a4.png) `#A4A4A4` | ![#615C5C](https://placehold.co/12x12/615c5c/615c5c.png) `#615C5C` |
| Operators, punctuation | ![#8A8575](https://placehold.co/12x12/8a8575/8a8575.png) `#8A8575` | ![#626060](https://placehold.co/12x12/626060/626060.png) `#626060` |
| Comments (italic) | ![#626A78](https://placehold.co/12x12/626a78/626a78.png) `#626A78` | ![#959292](https://placehold.co/12x12/959292/959292.png) `#959292` |
| Accent | ![#CC6528](https://placehold.co/12x12/cc6528/cc6528.png) `#CC6528` | ![#A33D00](https://placehold.co/12x12/a33d00/a33d00.png) `#A33D00` |
| Errors, deleted, conflicts | ![#C75E57](https://placehold.co/12x12/c75e57/c75e57.png) `#C75E57` | ![#9E352E](https://placehold.co/12x12/9e352e/9e352e.png) `#9E352E` |

The workbench takes the window colour of the rice's `cosmic/*.ron` for the
editor, side bars, panel, title and status bar, the container colours for
menus, hovers, inputs and the command palette, and the orange accent for the
active tab line, buttons, badges and the menu highlight. Button hover is a
step away from the accent, ![#D97A3F](https://placehold.co/12x12/d97a3f/d97a3f.png) `#D97A3F` in Cinder and ![#863300](https://placehold.co/12x12/863300/863300.png) `#863300` in Cinder Day. The integrated terminal uses the rice's COSMIC
Terminal scheme (`cosmic-term/`), so command output looks the same as in
COSMIC Terminal.

Cursor's own panels (Agent, chat, inline diffs) have no colour keys of their
own. Cursor builds them from standard ones, and the theme sets those: the
button colour is the agent's accent, the side bar and panel colours are its
surfaces, the diff colours are its accept / reject highlights, and the
terminal's `blue` slot colours its links.

## Contrast

Text is at least 4.5:1 on the window background and on menus and hovers,
comments and line numbers at least 3:1, in both halves.

- **Cinder**: Orange ![#CC6528](https://placehold.co/12x12/cc6528/cc6528.png)
  `#CC6528` is 4.9:1 on the window background and 4.5:1 on the container colour
  ![#1A1A1E](https://placehold.co/12x12/1a1a1e/1a1a1e.png) `#1A1A1E`, so it
  stays the same colour everywhere, the match highlight in the suggest and hover
  widgets included. Keywords on the highlighted current line are 4.5:1; comments
  dip under 3:1 there.
- **Cinder Day**: Orange ![#A33D00](https://placehold.co/12x12/a33d00/a33d00.png)
  `#A33D00` is 5.1:1 on the window background and 5.7:1 on the container colour
  ![#F3EFEF](https://placehold.co/12x12/f3efef/f3efef.png) `#F3EFEF`, so it
  stays the same colour everywhere, the match highlight in the suggest and hover
  widgets included. Keywords on the highlighted current line are 5.7:1; comments
  dip under 3:1 there.
