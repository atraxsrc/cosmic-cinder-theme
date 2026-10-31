# Firefox - Cinder

Firefox chrome matching the COSMIC Cinder rice. Ported from the DarkGold
baseline (theme recipe and stylesheets), recoloured for soot and orange.

## Palette

Stylesheets:

| Hex       | Role                      |
|-----------|---------------------------|
| ![#121212](https://placehold.co/12x12/121212/121212.png) `#121212` | Frame, page chrome, text on orange |
| ![#1A1A1E](https://placehold.co/12x12/1a1a1e/1a1a1e.png) `#1A1A1E` | Panels, menus             |
| ![#462D1B](https://placehold.co/12x12/462d1b/462d1b.png) `#462D1B` | Menu hover row (orange tinted into the panel) |
| ![#583421](https://placehold.co/12x12/583421/583421.png) `#583421` | Menu pressed row          |
| ![#2A2A30](https://placehold.co/12x12/2a2a30/2a2a30.png) `#2A2A30` | Separators, menu border   |
| ![#CC6528](https://placehold.co/12x12/cc6528/cc6528.png) `#CC6528` | Accent, URL bar border, hover rail |
| ![#D97A3F](https://placehold.co/12x12/d97a3f/d97a3f.png) `#D97A3F` | Accent hover              |
| ![#A5A297](https://placehold.co/12x12/a5a297/a5a297.png) `#A5A297` | Menu text, new tab active |
| ![#90947A](https://placehold.co/12x12/90947a/90947a.png) `#90947A` | Links                     |
| ![#DBD9D3](https://placehold.co/12x12/dbd9d3/dbd9d3.png) `#DBD9D3` | Hover text                |

## Structure

```
firefox/
├── theme/            WebExtension theme source (Cosmic Cinder)
│   ├── manifest.json     DarkGold's 24 colour keys + URL bar ring and selection
│   └── icons/            32 / 48 / 64 / 96 / 128, cropped from cinder-coupe
├── chrome/
│   ├── userChrome.css    browser UI: rounded corners, orange menu hover
│   └── userContent.css   new tab page: orange accents, blank shortcut tiles
└── install.sh            copies chrome/ into the default profile
```

Two layers, use one or both:

1. **Theme (colours):** `theme/` colours the toolbar, tabs, URL bar, menus,
   sidebar and new tab page. This is the main look. Load it from the folder
   (below) or from addons.mozilla.org once it is listed there.
2. **Stylesheets (optional):** `chrome/` adds rounded corners, orange menu
   hover, orange accents and a blank new-tab grid on top of the theme. They
   also work with Firefox's built-in Dark theme.

## Theme

Same colour keys and roles as DarkGold's Firefox theme: icons take the calm
colour (sage here, gold there), and everything "hot" (tab line, pressed
button, menu and sidebar selection, loading) takes the accent (orange here,
coral there). Cinder's orange is the loud one here; brick is kept for errors and does not
appear in the chrome.
One extra key, `toolbar_field_border_focus`, pins the focused URL bar ring to
orange so it does not fall back to the desktop accent when
`widget.non-native-theme.use-theme-accent` is on (the Firefox default on
Linux). Two more, `toolbar_field_highlight` and `toolbar_field_highlight_text`,
colour selected text in the URL bar the same way, as DarkGold does. Every
text colour clears WCAG AA (4.5:1) on its background; icons and the tab
line clear 3:1.

| Hex       | Where in the theme                          |
|-----------|---------------------------------------------|
| ![#121212](https://placehold.co/12x12/121212/121212.png) `#121212` | Frame, new tab, text on orange selections    |
| ![#1A1A1E](https://placehold.co/12x12/1a1a1e/1a1a1e.png) `#1A1A1E` | Toolbar, menus                              |
| ![#2A2A30](https://placehold.co/12x12/2a2a30/2a2a30.png) `#2A2A30` | URL bar field, button hover, sidebar border |
| ![#B3ADAD](https://placehold.co/12x12/b3adad/b3adad.png) `#B3ADAD` | Body text                                   |
| ![#90947A](https://placehold.co/12x12/90947a/90947a.png) `#90947A` | Menu border                                 |
| ![#A5A297](https://placehold.co/12x12/a5a297/a5a297.png) `#A5A297` | Icons, inactive tab text                    |
| ![#CC6528](https://placehold.co/12x12/cc6528/cc6528.png) `#CC6528` | Focused tab text, focused URL bar ring and text selection, tab line, pressed button, menu and sidebar selection, loading, attention |

Build the package:

```bash
cd theme && zip -r -X ../cosmic-cinder.zip . -x '.*'
```

Try it without installing: `about:debugging#/runtime/this-firefox` → **Load
Temporary Add-on** → pick `theme/manifest.json`. It is gone on restart. To
keep it, upload the zip to addons.mozilla.org (self-distribution is enough)
and install the signed `.xpi` it hands back.

## Stylesheets

```bash
./install.sh
```

Copies `chrome/` into your `*.default-release` profile, backs up anything it
replaces, and adds two prefs to `user.js`: one so Firefox reads the
stylesheets, one so the accent (URL bar ring, buttons) comes from the theme
and not the desktop. Then **fully restart**
Firefox - `userChrome.css` is parsed only at startup.

To install into another profile (a test profile, say), pass its folder:

```bash
./install.sh ~/.mozilla/firefox/<profile>
```

Every rice's `install.sh` takes the same argument, so switching a test
profile between rices is one command plus a restart.

Manual equivalent:

1. `about:config` → `toolkit.legacyUserProfileCustomizations.stylesheets` = `true`
2. `about:support` → Profile Directory → Open Directory
3. Copy `chrome/` in
4. Restart

To undo: delete the two files from the profile's `chrome/` folder and restart.

## Notes

- **Never set `--panel-*` or `--arrowpanel-*` on `:root`.** Those variables leak
  into the toolbar and blank the URL bar. They stay on the popup elements.
- **Context menus do not get an extra element border.** A second stroke made
  the right-click panel look detached. Hover is a orange-tinted ![#462D1B](https://placehold.co/12x12/462d1b/462d1b.png) `#462D1B`
  row with a 3px orange rail on the left, not a full ring.
- **Native menu styling is switched off** (`appearance: none`) on menus and
  menu rows. Without it the COSMIC/GTK hover paints over the colours above.
- **`[_moz-menuactive="true"]` is required.** Firefox marks the active
  context-menu row with that attribute, not only `:hover`.
- **`userContent.css` is colours plus one hide rule.** It sets accent / focus /
  link colours and hides shortcut artwork (`opacity: 0`) so the new-tab tiles
  stay blank. No size or position rules on the tiles.
- Built against **Firefox 154**.

## License

MIT, same as the rest of the repo.
