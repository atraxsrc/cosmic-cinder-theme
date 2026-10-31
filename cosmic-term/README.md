# COSMIC Terminal schemes

Colour schemes for COSMIC Terminal. The desktop `.ron` in `cosmic/` does not
colour ANSI text, so the terminal needs its own import.

1. COSMIC Terminal → **View → Color schemes…** (not Settings → Appearance)
2. **Dark** tab → **Import** → a `.ron` from this folder
3. View → Settings → Appearance → Color scheme (dark) → the scheme name

If a profile is set as default, set the scheme on that profile too or the
dropdown will look like it did nothing. `cosmic/install.sh` selects **Cinder**,
so import that one at least.

Every scheme here keeps the 16 ANSI colours of Cinder. Only the plain text
colour and the dim text change, so bat, lsd, starship, nala and btop look the
same whichever one you pick. The cursor stays orange ![#CC6528](https://placehold.co/12x12/cc6528/cc6528.png) `#CC6528`.

The ANSI slots follow the rice: `red` is brick ![#C75E57](https://placehold.co/12x12/c75e57/c75e57.png) `#C75E57`, the one colour
kept for what is wrong; `green` is sage ![#A5A297](https://placehold.co/12x12/a5a297/a5a297.png) `#A5A297`; `yellow` is sand
![#C6C4B0](https://placehold.co/12x12/c6c4b0/c6c4b0.png) `#C6C4B0`; `blue` is the orange accent ![#CC6528](https://placehold.co/12x12/cc6528/cc6528.png) `#CC6528`, so nala's `Updated:` and
`Downloaded:` labels sit in the rice's own colour next to the sage
`No Change:`; `magenta` is peach ![#E19E74](https://placehold.co/12x12/e19e74/e19e74.png) `#E19E74`, the warm colour numbers and
warnings take; `cyan` is taupe ![#8A8575](https://placehold.co/12x12/8a8575/8a8575.png) `#8A8575`; `white` is
![#DBD9D3](https://placehold.co/12x12/dbd9d3/dbd9d3.png) `#DBD9D3`. Directories are not affected: `LS_COLORS` in `zsh/cinder.zsh` colours
them in truecolor.

## Which one

Smoke ![#B3ADAD](https://placehold.co/12x12/b3adad/b3adad.png) `#B3ADAD` is the default. The others move through Cinder's own greys
and tints: calmer above it, brighter below it, for whoever finds the default
glares at night or reads too dim by day.

| Scheme | Plain text | Contrast | Also used for |
|--------|------------|----------|---------------|
| Cinder Taupe | ![#8A8575](https://placehold.co/12x12/8a8575/8a8575.png) `#8A8575` | 5.1:1 | muted text, the dim text colour and the `cyan` slot |
| Cinder Olive | ![#90947A](https://placehold.co/12x12/90947a/90947a.png) `#90947A` | 6.0:1 | directories (`LS_COLORS`), the bright `cyan` slot |
| Cinder Grey | ![#A4A4A4](https://placehold.co/12x12/a4a4a4/a4a4a4.png) `#A4A4A4` | 7.5:1 | parameters in the editor, the terminal text of the source palette |
| Cinder Sand | ![#C6C4B0](https://placehold.co/12x12/c6c4b0/c6c4b0.png) `#C6C4B0` | 10.6:1 | functions, the `yellow` slot |
| Cinder Pale | ![#DBD9D3](https://placehold.co/12x12/dbd9d3/dbd9d3.png) `#DBD9D3` | 13.3:1 | the `white` slot and bold text |
| **Cinder** (default) | ![#B3ADAD](https://placehold.co/12x12/b3adad/b3adad.png) `#B3ADAD` | 8.5:1 | the desktop text colour |

When plain text shares a colour with an ANSI slot, output in that slot stops
standing out: directories in Cinder Olive, for example, look like plain text.
Brick errors and peach numbers stand out more against the dimmer
schemes than against smoke.

**Bold:** `bright_foreground` (![#DBD9D3](https://placehold.co/12x12/dbd9d3/dbd9d3.png) `#DBD9D3`) only colours bold text when
`use_bright_bold` is on. The baseline config in `cosmic/config/` leaves it off,
so bold text is the plain text colour at weight 800.

Previews are rendered in Fira Mono on the theme background ![#121212](https://placehold.co/12x12/121212/121212.png) `#121212`, not
taken from the terminal. In COSMIC you get Maple Mono at 77% opacity over the
wallpaper, so text looks a little softer and contrast a little lower.

## Dark

**Cinder** · `Cinder-term.ron` · smoke ![#B3ADAD](https://placehold.co/12x12/b3adad/b3adad.png) `#B3ADAD`, 8.5:1. The default.

![Cinder](../assets/cosmic-term/Cinder-term.png)

**Cinder Taupe** · `Cinder-term-taupe.ron` · ![#8A8575](https://placehold.co/12x12/8a8575/8a8575.png) `#8A8575`, 5.1:1. Muted text, the dim text colour and the `cyan` slot.

![Cinder Taupe](../assets/cosmic-term/Cinder-term-taupe.png)

**Cinder Olive** · `Cinder-term-olive.ron` · ![#90947A](https://placehold.co/12x12/90947a/90947a.png) `#90947A`, 6.0:1. Directories (`LS_COLORS`), the bright `cyan` slot.

![Cinder Olive](../assets/cosmic-term/Cinder-term-olive.png)

**Cinder Grey** · `Cinder-term-grey.ron` · ![#A4A4A4](https://placehold.co/12x12/a4a4a4/a4a4a4.png) `#A4A4A4`, 7.5:1. Parameters in the editor, the terminal text of the source palette.

![Cinder Grey](../assets/cosmic-term/Cinder-term-grey.png)

**Cinder Sand** · `Cinder-term-sand.ron` · ![#C6C4B0](https://placehold.co/12x12/c6c4b0/c6c4b0.png) `#C6C4B0`, 10.6:1. Functions, the `yellow` slot.

![Cinder Sand](../assets/cosmic-term/Cinder-term-sand.png)

**Cinder Pale** · `Cinder-term-pale.ron` · ![#DBD9D3](https://placehold.co/12x12/dbd9d3/dbd9d3.png) `#DBD9D3`, 13.3:1. The `white` slot and bold text.

![Cinder Pale](../assets/cosmic-term/Cinder-term-pale.png)

Contrast is plain text on the theme background, WCAG 2.
