# Handoff: Jordan Nnabugwu — Developer Portfolio

## Overview

A single-page developer portfolio for Jordan Nnabugwu, a Flutter/Dart mobile engineer with 5+ years of experience. The site presents Jordan's work, credentials, tech stack, open source contributions, and conference speaking — and drives visitors to a contact CTA.

## About the Design Files

The file `Jordan Nnabugwu.html` in this bundle is a **high-fidelity design reference created in HTML** — it is a prototype showing the intended look, feel, and behaviour of the final site. It is **not** production code to ship directly.

Your task is to **recreate this design in the target codebase** (Jordan has specified he is building with [Jaspr](https://docs.page/schultek/jaspr) — a Dart-based web framework). Implement the layout, components, and interactions as described below, using Jaspr's component model and Dart idioms. The HTML file is a pixel-level visual spec; use it alongside this document.

## Fidelity

**High-fidelity.** Colors, typography, spacing, border radii, and interactions are all finalised. Recreate the UI pixel-precisely using the token values listed in the Design Tokens section.

---

## Page Structure (top → bottom)


| #   | Section                                      | ID / anchor    |
| --- | -------------------------------------------- | -------------- |
| 1   | Navigation bar (sticky, hidden until scroll) | `#top`         |
| 2   | Hero (full-bleed photo + text overlay)       | —              |
| 3   | Proof bar (4 stats)                          | —              |
| 4   | Credibility strip (client names)             | —              |
| 5   | Selected Work (2-col project card grid)      | `#work`        |
| 6   | Open Source & Speaking (2 cards)             | `#open-source` |
| 7   | Stack & Skills (grouped chip grid)           | `#about`       |
| 8   | Contact card                                 | `#contact`     |
| 9   | Footer                                       | —              |


---

## Screens / Views

### 1. Navigation Bar

- **Behaviour:** Hidden off-screen (`translateY(-100%)`) on load. Slides down after the user scrolls past 80px. Transition: `0.4s cubic-bezier(0.16,1,0.3,1)`.
- **Layout:** Fixed, full-width. Inner pill container: `max-width 960px`, centred, `border-radius 20px`, `padding 13px 24px`. Flex row, space-between.
- **Background:** `rgba(9,9,15,0.82)` + `backdrop-filter: blur(16px)`. Border: `1px solid rgba(240,238,247,0.07)`.
- **Logo:** `JN.` — Syne 800 17px. `JN` in `#F0EEF7`, `.` in `#00D4A8`.
- **Links:** Work · About · Open Source — Figtree 500 13px, `#8B8AA0`. Active/hover: `#F0EEF7`. Smooth colour transition `0.15s`.
- **CTA:** "Get in Touch" — Figtree 600 13px, `#09090F` on `#00D4A8` background, `border-radius 6px`, `padding 7px 16px`. Links to `#contact`.

### 2. Hero

- **Layout:** Full viewport height (`100svh`). Background: full-bleed photo (`assets/photo-hero.jpeg`). `object-fit: cover`, `object-position: center 52%`.
- **Overlay:** Two-layer gradient:
  - `linear-gradient(to top, rgba(9,9,15,0.97) 0%, rgba(9,9,15,0.65) 40%, rgba(9,9,15,0.25) 75%, transparent 100%)`
  - `linear-gradient(to right, rgba(9,9,15,0.6) 0%, transparent 60%)`
- **Content:** Pinned to bottom-left. `padding: 0 40px 64px`. `max-width 960px` centred.
- **Eyebrow:** `Flutter · Dart · Mobile Engineering` — IBM Plex Mono 11px, `#00D4A8`, `letter-spacing 0.16em`, uppercase. Fade-up animation: `500ms ease-out, delay 0ms`.
- **H1:** `Apps that work at scale.` — Syne 800, `clamp(44px, 6vw, 72px)`, `line-height 1.0`. "work" in `#00D4A8`. Fade-up: `500ms ease-out, delay 80ms`.
- **Lead:** Figtree 300 17px, `rgba(240,238,247,0.72)`, `max-width 460px`, `line-height 1.65`. Fade-up: `500ms ease-out, delay 160ms`.
- **CTA row:** Two buttons side by side, `gap 12px`. Fade-up: `500ms ease-out, delay 240ms`.
  - Primary: "Get in Touch" — btn-cta style (see Buttons).
  - Secondary: "View My Work" — btn-secondary style.

### 3. Proof Bar

- **Layout:** Full width, `padding 28px 40px`. Background `#09090F`. Top border `1px solid rgba(240,238,247,0.07)`.
- **Inner:** `max-width 960px`, flex row, 4 equal-width stat blocks separated by right borders.
- **Each stat:**
  - Value: Syne 800 34px, `#F0EEF7`, `line-height 1`. Superscript `+` in `#00D4A8` at 18px.
  - Label: IBM Plex Mono 10px, `#3D3C52`, uppercase, `letter-spacing 0.1em`, `margin-top 6px`.
- **Stats:**
  1. `1M+` / `Downloads — Open Food Facts`
  2. `500K` / `Users — Whisker App`
  3. `5+` / `Years shipping Flutter`
  4. `FlutterCon` (22px) / `Speaker — Berlin 2024`

### 4. Credibility Strip

- **Layout:** Full width, `padding 20px 40px`. Background `#111118`. Top + bottom borders `1px solid rgba(240,238,247,0.07)`.
- **Label:** `Built for` — IBM Plex Mono 9px, `#3D3C52`, uppercase, `letter-spacing 0.14em`. Right border separator, `margin-right 28px`.
- **Names:** Syne 600 14px, `#8B8AA0`. Hover → `#F0EEF7`. Names: Whisker · Open Food Facts · Trackhouse Racing · Queue Travel · Very Good Ventures.

### 5. Selected Work

- **Layout:** Section `padding 80px 40px`, `max-width 960px`. 2-column grid, `gap 16px`.
- **Section label:** IBM Plex Mono 10px, `#3D3C52`, uppercase, `letter-spacing 0.18em`. Right rule line.
- **H2:** Syne 700 32px, `#F0EEF7`.
- **Sub:** Figtree 300 15px, `#8B8AA0`.
- **Project card** (`border-radius 20px`, `padding 26px`, `background #111118`, `border 1px solid rgba(240,238,247,0.07)`):
  - Hover: `border-color rgba(240,238,247,0.14)`, `translateY(-2px)`. Transition `0.2s ease`.
  - Top row: left = meta label (IBM Plex Mono 9px, `#3D3C52`, uppercase) + project name (Syne 700 20px). Right = icon chip (40×40px, `#0D1A17` bg, teal border, `border-radius 6px`).
  - Description: Figtree 400 13px, `#8B8AA0`, `line-height 1.65`.
  - Tags: flex wrap, `gap 6px`. See Tag component.

**Projects:**


| Name              | Meta                        | Icon | Description                                                                                                                              | Tags                                |
| ----------------- | --------------------------- | ---- | ---------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------- |
| Whisker           | Client · 500K users         | 🐾   | Architecture lead on a pet-care app serving 500K users. BLoC patterns, CI/CD in CodeMagic, drove test coverage from near-zero.           | Flutter, BLoC, Firebase, CodeMagic  |
| Trackhouse Racing | Client · Race Engineering   | 🏁   | Video analysis tool for race engineers. Seek/playback UX, backend data contract gap identification, observability via Talker and Sentry. | Flutter, Sentry, Very Good Ventures |
| Open Food Facts   | Open Source · 1M+ downloads | 🥫   | Major contributor. Led Dart migration, built new UI modules, maintained code quality across a distributed open-source team.              | Flutter, Dart, Open Source          |
| Queue Travel      | Client · Travel             | ✈️   | End-to-end booking flow. Supabase backend, GraphQL data layer, polished cross-platform experience on iOS and Android.                    | Flutter, Supabase, GraphQL          |


### 6. Open Source & Speaking

- **Layout:** Same section shell. Two cards stacked vertically, `gap 14px`.

**FlutterCon card:**

- Background `#111118`, border `1px solid rgba(255,107,53,0.2)`, `border-radius 20px`, `padding 28px 32px`.
- Hover: border → `rgba(255,107,53,0.38)`.
- Grid: `1fr 100px`, `gap 24px`, vertically centred.
- Left: eyebrow (IBM Plex Mono 10px, `#FF6B35`, uppercase) + title (Syne 700 22px) + description (Figtree 400 13px, `#8B8AA0`) + ghost button "Watch the Talk".
- Right: `assets/photo-fluttercon.png` — 88×88px circle, `border 2px solid rgba(255,107,53,0.4)`.

**Open Food Facts card:**

- Background `#111118`, border `1px solid rgba(0,212,168,0.18)`, `border-radius 20px`, `padding 24px 32px`.
- Flex row, `gap 24px`, vertically centred.
- Left: eyebrow (IBM Plex Mono 10px, `#00D4A8`) + title (Syne 700 19px) + description (Figtree 400 13px, `#8B8AA0`).
- Right: ghost button "View on GitHub".

### 7. Stack & Skills

- **Outer card:** `background #111118`, `border 1px solid rgba(240,238,247,0.07)`, `border-radius 20px`, `padding 28px 32px`.
- **Rows** separated by `border-bottom 1px solid rgba(240,238,247,0.07)`. Last row no border.
- **Group label:** IBM Plex Mono 9px, `#3D3C52`, uppercase, `letter-spacing 0.14em`, `min-width 56px`.
- **Chips:** flex wrap, `gap 7px`.


| Group   | Items                                     | Style              |
| ------- | ----------------------------------------- | ------------------ |
| UI      | Flutter, Dart, Jaspr                      | tag-tech (teal)    |
| State   | BLoC, Cubit, Riverpod                     | tag-tech (teal)    |
| Backend | Firebase, Supabase, AWS, GraphQL, FastAPI | tag-tech (teal)    |
| Tooling | CodeMagic, Git, Sentry, Talker            | tag-neutral (grey) |


### 8. Contact Card

- **Outer:** `background #111118`, `border 1px solid rgba(240,238,247,0.07)`, `border-radius 32px`, `padding 52px 48px`. Text centred.
- **Radial glow:** `position absolute`, `width 500px height 240px`, `radial-gradient(ellipse, rgba(0,212,168,0.07) 0%, transparent 70%)`, centred above card.
- **Heading:** Syne 800 36px `#F0EEF7`. Text: "Let's build something."
- **Sub:** Figtree 300 15px `#8B8AA0`. Text: "Available for contract and full-time roles."
- **Buttons:** "Get in Touch" (btn-cta) · "GitHub" (btn-secondary) · "LinkedIn" (btn-secondary). Flex row, centred, `gap 12px`.

### 9. Footer

- Border-top `1px solid rgba(240,238,247,0.07)`. `padding 20px 40px`. Centred.
- IBM Plex Mono 11px, `#3D3C52`, `letter-spacing 0.06em`.
- Text: `Built with Jaspr · © 2025 Jordan Nnabugwu`. `©` symbol in `#00D4A8`.

---

## Components

### Buttons


| Variant       | Background  | Text      | Border                             |
| ------------- | ----------- | --------- | ---------------------------------- |
| btn-cta       | `#FF6B35`   | `#ffffff` | none                               |
| btn-secondary | transparent | `#F0EEF7` | `1px solid rgba(240,238,247,0.14)` |
| btn-ghost     | transparent | `#00D4A8` | `1px solid rgba(0,212,168,0.30)`   |


All buttons: Figtree 600 14px, `border-radius 6px`, `padding 12px 24px`. Active state: `scale(0.97)`, `150ms ease`. Hover: opacity 0.9 (cta) / darker bg (secondary) / tinted bg (ghost).

### Tags


| Variant     | Background              | Text      | Border                             |
| ----------- | ----------------------- | --------- | ---------------------------------- |
| tag-tech    | `rgba(0,212,168,0.10)`  | `#00D4A8` | `1px solid rgba(0,212,168,0.30)`   |
| tag-orange  | `rgba(255,107,53,0.10)` | `#FF6B35` | `1px solid rgba(255,107,53,0.28)`  |
| tag-neutral | `#1A1A25`               | `#8B8AA0` | `1px solid rgba(240,238,247,0.07)` |


All tags: IBM Plex Mono 10px, `padding 4px 11px`, `border-radius 40px`.

---

## Interactions & Behaviour


| Interaction        | Detail                                                                                                                                                         |
| ------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Nav hide/show      | Hidden (`translateY(-100%)`) until `window.scrollY > 80px`. Transition `0.4s cubic-bezier(0.16,1,0.3,1)`.                                                      |
| Hero stagger       | Eyebrow → H1 → lead → CTA row fade-up. Delays: 0 / 80 / 160 / 240ms. Duration 500ms ease-out. `opacity 0 → 1`, `translateY(16px → 0)`.                         |
| Scroll reveal      | All sections (`.fade-up`) fade-up when entering viewport. `IntersectionObserver`, threshold 0.1, `rootMargin 0px 0px -40px 0px`. Once triggered, not reversed. |
| Project card hover | `border-color` → `rgba(240,238,247,0.14)`, `translateY(-2px)`. `0.2s ease`.                                                                                    |
| Nav active link    | Highlight nav link matching current scroll section. `0.15s` colour transition.                                                                                 |
| Smooth scroll      | `scroll-behavior: smooth` on `html`. All `#anchor` links use in-page navigation.                                                                               |


---

## Design Tokens

### Colors

```
--bg-base:      #09090F       /* page background */
--bg-surface:   #111118       /* cards, panels */
--bg-raised:    #1A1A25       /* chips, hover states */
--bg-hover:     #22222E
--accent:       #00D4A8       /* teal — use sparingly */
--accent-dim:   rgba(0,212,168,0.10)
--accent-mid:   rgba(0,212,168,0.30)
--orange:       #FF6B35       /* CTA button only */
--orange-dim:   rgba(255,107,53,0.10)
--text-primary: #F0EEF7
--text-muted:   #8B8AA0
--text-faint:   #3D3C52
--border:       rgba(240,238,247,0.07)
--border-mid:   rgba(240,238,247,0.14)
```

### Typography

```
--font-display: 'Syne', sans-serif          /* headings only */
--font-body:    'Figtree', sans-serif       /* body, UI labels */
--font-mono:    'IBM Plex Mono', monospace  /* tech labels, tags, eyebrows */
```

Google Fonts import: `Syne:wght@400;500;600;700;800`, `IBM+Plex+Mono:wght@400;500`, `Figtree:wght@300;400;500;600`

### Spacing Scale

```
4px   xs
8px   sm
12px  md-sm
16px  md
24px  lg
32px  xl
48px  2xl
64px  3xl
96px  section-gap
```

### Border Radius

```
6px   buttons, small chips
12px  containers
20px  major cards / sections
32px  contact card
40px  pill tags (999px also acceptable)
```

---

## Assets


| File                          | Usage                                                                                        |
| ----------------------------- | -------------------------------------------------------------------------------------------- |
| `assets/photo-hero.jpeg`      | Hero section full-bleed background. `object-position: center 52%` to frame Jordan's face.    |
| `assets/photo-fluttercon.png` | FlutterCon card speaker photo. 88×88px circle crop, `border 2px solid rgba(255,107,53,0.4)`. |


---

## Design Rules (from spec)

1. **Teal is earned.** Use `#00D4A8` only for active states, accent labels, and the primary nav CTA. Never as a large background fill.
2. **One orange CTA per page.** "Get in Touch" in orange appears in the hero and contact card only.
3. **Syne for headings only.** Never use Syne for body text, descriptions, or UI labels.
4. **IBM Plex Mono for all technical labels.** Tags, eyebrows, stat annotations — always mono.
5. **No decorative gradients.** The hero overlay gradient is atmospheric only.

---

## Files in This Package


| File                          | Description                                            |
| ----------------------------- | ------------------------------------------------------ |
| `Jordan Nnabugwu.html`        | Hi-fi HTML prototype — the visual and interaction spec |
| `assets/photo-hero.jpeg`      | Hero background photo                                  |
| `assets/photo-fluttercon.png` | Speaker photo (circular, pre-cropped)                  |
| `README.md`                   | This document                                          |


