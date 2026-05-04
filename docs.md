# Jordan Nnabugwu — Portfolio Site Docs

## About Jordan

Jordan J.N. Nnabugwu is a Flutter/Dart mobile engineer with 5+ years of experience.

- **Current role:** Software Engineer III (Flutter) at Very Good Ventures (April 2025–present)
- **Email:** [jordannnabugwu@gmail.com](mailto:jordannnabugwu@gmail.com)
- **GitHub:** github.com/jnnabugwu
- **LinkedIn:** linkedin.com/in/jordan-nnabugwu

**Key credentials:** FlutterCon New York 2025 speaker (Server-Driven UI), 1M+ download open-source contributor (Open Food Facts), 500K-user app (Whisker).

**Past roles:** Open Food Facts (May 2024–Apr 2025), Whisker (May 2021–Sept 2023), Scrilla, Galtronics, Intel IoT.
**Education:** BS Electrical Engineering, Morgan State University 2018.

---

## Project: Portfolio Site

Built with [Jaspr](https://docs.page/schultek/jaspr) 0.23.0 (Dart web framework, static mode). Design spec: `web/design-reference.html`. Full handoff spec: `README.md`.

### File Map


| File                              | Purpose                                                                        |
| --------------------------------- | ------------------------------------------------------------------------------ |
| `lib/pages/home.dart`             | Full single-page portfolio — all sections, `StatelessComponent` (no `@client`) |
| `lib/main.server.dart`            | `Document` — sets title, imports Google Fonts + `/styles.css`                  |
| `lib/app.dart`                    | Thin wrapper that renders `Home`                                               |
| `web/styles.css`                  | All CSS: design tokens, components, animations, responsive                     |
| `web/portfolio.js`                | Scroll reveal, nav show/hide, active link highlight                            |
| `web/assets/photo-hero.jpeg`      | Hero section full-bleed background                                             |
| `web/assets/photo-fluttercon.png` | FlutterCon speaker photo (circular crop)                                       |
| `web/design-reference.html`       | Hi-fi HTML prototype — visual spec, do not ship                                |


### Running the Site

```bash
dart run jaspr serve
```

Triggers build_runner automatically and serves at `localhost:8080`.

---

## Projects in the Portfolio


| #   | Project               | Context                     | Key Work                                                                                                              |
| --- | --------------------- | --------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| 1   | **Scooters Coffee**   | VGV · Native-to-Flutter     | CI/CD in CodeMagic, test coverage from near-zero. Firebase Intergration (Authentication ,Crashlytics and Performance) |
| 2   | **Trackhouse Racing** | VGV · Race Engineering      | Seek/playback UX debug, backend data contract gap identification                                                      |
| 3   | **Whisker**           | Whisker FTE · 500K users    | AWS + Flutter + GraphQL, IoT device controls, analytics dashboard                                                     |
| 4   | **Open Food Facts**   | Open Source · 1M+ downloads | Deep linking (sign-up/password recovery), spell-checker on product edit screen                                        |
| 5   | **Queue Travel**      | Client · Travel             | Supabase Auth, BLoC, go_router, flight updates + TSA wait times                                                       |


> **Note:** CI/CD in CodeMagic and test coverage belong to **Scooters Coffee** (native-to-Flutter migration at VGV), not Whisker. Whisker used AWS + GraphQL + Provider state management.

