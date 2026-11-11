# Cinder

> Soot, smoke and one burnt-orange glow, with brick kept for what is wrong. Muted greys from a cold city.

Pop!_OS 24.04 on the COSMIC desktop, one palette carried through the whole
machine: desktop, terminal, shell, editor, browser. This note is the rice
describing itself, written in Markdown and rendered by **Postilla**.

## Palette

Every text colour is checked against the window background ![#121212](https://placehold.co/12x12/121212/121212.png) `#121212`.

| Role | Hex | Contrast on background |
|------|-----|------------------------|
| Text | ![#B3ADAD](https://placehold.co/12x12/b3adad/b3adad.png) `#B3ADAD` | 8.5:1 |
| Orange, accent | ![#CC6528](https://placehold.co/12x12/cc6528/cc6528.png) `#CC6528` | 4.9:1 |
| Peach, warning | ![#E19E74](https://placehold.co/12x12/e19e74/e19e74.png) `#E19E74` | 8.3:1 |
| Brick, error | ![#C75E57](https://placehold.co/12x12/c75e57/c75e57.png) `#C75E57` | 4.6:1 |
| Sage, success | ![#A5A297](https://placehold.co/12x12/a5a297/a5a297.png) `#A5A297` | 7.3:1 |
| Sand, symlinks | ![#C6C4B0](https://placehold.co/12x12/c6c4b0/c6c4b0.png) `#C6C4B0` | 10.6:1 |
| Olive, directories | ![#90947A](https://placehold.co/12x12/90947a/90947a.png) `#90947A` | 6.0:1 |
| Muted | ![#8A8575](https://placehold.co/12x12/8a8575/8a8575.png) `#8A8575` | 5.1:1 |

Containers sit one step away from the background at ![#1A1A1E](https://placehold.co/12x12/1a1a1e/1a1a1e.png) `#1A1A1E`, which is
what frosted glass blurs into.

## Where the colours go

```mermaid
flowchart LR
    P[Cinder palette] --> D[COSMIC desktop<br/>Cinder.ron, Dark slot]
    P --> T[COSMIC Terminal<br/>Cinder]
    P --> S[zsh layer<br/>LS_COLORS, highlighting, starship]
    P --> E[Postilla<br/>syntax theme from the terminal scheme]
    T --> B[btop, bat, lsd, fastfetch]
    D --> F[Firefox<br/>built-in Dark + userChrome]
```

## Setup, in order

- [x] Import `cosmic/Cinder.ron` into Appearance, **Dark** slot
- [x] Import `cosmic-term/Cinder-term.ron`, pick **Cinder** for the profile
- [x] `./icons/install.sh` for the **Cosmic-Cinder** icons, `./cosmic/install.sh` for fonts and the terminal look
- [x] `./zsh/install.sh`, `./lsd/install.sh`, `./fastfetch/install.sh`
- [x] Cursor: Oxygen-Cinder-Orange
- [x] Wallpaper: `backgrounds/cinder-anime.png`
- [ ] Screenshot for the README

## The baseline every rice shares

```ron
corner_radii: (
    radius_xs: (2.0, 2.0, 2.0, 2.0),   // squared corners
    radius_xl: (2.0, 2.0, 2.0, 2.0),
),
frosted: Low,
frosted_windows: true,
frosted_panel: true,
frosted_applets: true,
frosted_maximized_apps: false,
gaps: (0, 4),
active_hint: 1,
```

Contrast is the WCAG ratio[^1], where $L$ is relative luminance:

```typst
$ (L_1 + 0.05) / (L_2 + 0.05) >= 4.5 $
```

---

*Rendered in Postilla, a Markdown notes app for COSMIC. The window is painted
with this rice's terminal scheme, imported as a syntax theme.*

[^1]: Web Content Accessibility Guidelines, success criterion 1.4.3. Normal text wants 4.5:1, large text 3:1.
