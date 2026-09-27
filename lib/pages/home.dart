import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      _nav(),
      _hero(),
      _proofBar(),
      _credibilityStrip(),
      _work(),
      _openSource(),
      _stack(),
      _contact(),
      _footer(),
      // portfolio.js handles nav scroll, fade-up reveal, active links
      script(attributes: {'src': '/portfolio.js', 'defer': ''}),
    ]);
  }

  Component _nav() => nav(
    id: 'nav',
    classes: 'nav',
    attributes: {'aria-label': 'Main navigation'},
    [
      div(classes: 'nav-inner', [
        a(href: '#top', classes: 'nav-logo', [
          .text('JN'),
          span([.text('.')]),
        ]),
        div(classes: 'nav-links', [
          a(href: '#work', classes: 'nav-link', [.text('Work')]),
          a(href: '#about', classes: 'nav-link', [.text('About')]),
          a(href: '#open-source', classes: 'nav-link', [.text('Open Source')]),
          a(href: '#contact', classes: 'nav-link nav-cta', [.text('Get in Touch')]),
        ]),
      ]),
    ],
  );

  Component _hero() => section(
    id: 'top',
    classes: 'hero',
    [
      img(
        src: '/assets/photo-hero.jpeg',
        alt: 'Jordan Nnabugwu',
        classes: 'hero-photo',
      ),
      div(classes: 'hero-overlay', []),
      div(classes: 'hero-content', [
        div(classes: 'hero-eyebrow', [
          .text('Flutter · Dart · Mobile Engineering'),
        ]),
        h1(classes: 'hero-h1', [
          .text('Apps that '),
          em([.text('work')]),
          br(),
          .text('at scale.'),
        ]),
        p(classes: 'hero-lead', [
          .text(
            'Flutter engineer with 5+ years shipping consumer and enterprise apps. '
            'From architecture to App Store — I own it end-to-end.',
          ),
        ]),
        div(classes: 'hero-cta-row', [
          a(href: '#contact', classes: 'btn btn-cta', [.text('Get in Touch')]),
          a(href: '#work', classes: 'btn btn-secondary', [.text('View My Work')]),
        ]),
      ]),
    ],
  );

  Component _proofBar() => div(classes: 'proof-bar', [
    div(classes: 'proof-bar-inner', [
      div(classes: 'proof-stat', [
        div(classes: 'proof-value', [
          .text('1M'),
          span(classes: 'proof-sup', [.text('+')]),
        ]),
        div(classes: 'proof-label', [.text('Downloads — Open Food Facts')]),
      ]),
      div(classes: 'proof-stat', [
        div(classes: 'proof-value', [.text('500K')]),
        div(classes: 'proof-label', [.text('Users — Whisker App')]),
      ]),
      div(classes: 'proof-stat', [
        div(classes: 'proof-value', [
          .text('5'),
          span(classes: 'proof-sup', [.text('+')]),
        ]),
        div(classes: 'proof-label', [.text('Years shipping Flutter')]),
      ]),
      div(classes: 'proof-stat', [
        div(classes: 'proof-value proof-value--sm', [.text('FlutterCon')]),
        div(classes: 'proof-label', [.text('Speaker — New York 2025')]),
      ]),
    ]),
  ]);

  Component _credibilityStrip() => div(classes: 'cred-strip', [
    div(classes: 'cred-strip-inner', [
      span(classes: 'cred-label', [.text('Built for')]),
      div(classes: 'cred-names', [
        span(classes: 'cred-name', [.text('Whisker')]),
        span(classes: 'cred-name', [.text('Open Food Facts')]),
        span(classes: 'cred-name', [.text('Trackhouse Racing')]),
        span(classes: 'cred-name', [.text('Queue Travel')]),
        span(classes: 'cred-name', [.text('Very Good Ventures')]),
      ]),
    ]),
  ]);

  Component _work() => div(id: 'work', [
    div(classes: 'section fade-up', [
      div(classes: 'section-label', [.text('03 — Selected Work')]),
      h2(classes: 'section-heading', [.text("What I've shipped.")]),
      p(classes: 'section-sub', [
        .text('Real products, real users. Each one owned end-to-end.'),
      ]),
      div(classes: 'projects-grid', [
        _projectCard(
          meta: 'VGV · Native-to-Flutter',
          name: 'Scooters Coffee',
          icon: '☕',
          description:
              'Native-to-Flutter migration for a coffee brand. Shipped CI/CD in '
              'CodeMagic for all 4 developers, drove test coverage from near-zero, '
              'and integrated Firebase Authentication, Crashlytics, and Performance.',
          techTags: ['Flutter', 'CodeMagic', 'Firebase'],
          neutralTags: ['Very Good Ventures'],
        ),
        _projectCard(
          meta: 'VGV · Race Engineering',
          name: 'Trackhouse Racing',
          icon: '🏁',
          description:
              'Video analysis tool for race engineers. Debugged a seek/playback '
              'UX issue end-to-end and identified a backend data contract gap that '
              'unblocked accurate timeline interactions.',
          techTags: ['Flutter', 'Talker'],
          neutralTags: ['Very Good Ventures'],
        ),
        _projectCard(
          meta: 'FTE · 500K users',
          name: 'Whisker',
          icon: '🐾',
          description:
              'Full-stack pet-care app serving 500K users. Built IoT device controls, '
              'a user analytics dashboard, and accessibility improvements using '
              'Flutter, AWS, and GraphQL.',
          techTags: ['Flutter', 'AWS', 'GraphQL'],
        ),
        _projectCard(
          meta: 'Open Source · 1M+ downloads',
          name: 'Open Food Facts',
          icon: '🥫',
          description:
              'Contributed to a 1M+ download food database app. Implemented deep '
              'linking for sign-up and password recovery, and integrated a '
              'spell-checker on the product edit screen.',
          techTags: ['Flutter', 'Dart'],
          neutralTags: ['Open Source'],
        ),
        _projectCard(
          meta: 'Client · Travel',
          name: 'Queue Travel',
          icon: '✈️',
          description:
              'App for flight updates and live TSA wait times. Integrated Supabase '
              'Auth with secure token storage and used BLoC with go_router for '
              'deep-link-friendly navigation.',
          techTags: ['Flutter', 'Supabase', 'BLoC'],
        ),
      ]),
    ]),
  ]);

  Component _projectCard({
    required String meta,
    required String name,
    required String icon,
    required String description,
    required List<String> techTags,
    List<String> neutralTags = const [],
  }) =>
      div(classes: 'project-card', [
        div(classes: 'project-card-top', [
          div([
            div(classes: 'project-meta', [.text(meta)]),
            div(classes: 'project-name', [.text(name)]),
          ]),
          div(classes: 'project-icon', [.text(icon)]),
        ]),
        p(classes: 'project-desc', [.text(description)]),
        div(classes: 'project-tags', [
          for (final tag in techTags) span(classes: 'tag tag-tech', [.text(tag)]),
          for (final tag in neutralTags) span(classes: 'tag tag-neutral', [.text(tag)]),
        ]),
      ]);

  Component _openSource() => div(id: 'open-source', [
    div(classes: 'section fade-up', [
      div(classes: 'section-label', [.text('04 — Open Source & Speaking')]),
      h2(classes: 'section-heading', [.text('Beyond the day job.')]),
      p(classes: 'section-sub', [
        .text("Contributing to the ecosystem and sharing what I've learned."),
      ]),
      div(classes: 'oss-grid', [
        // FlutterCon card
        div(classes: 'oss-card-fluttercon', [
          div([
            div(classes: 'oss-eyebrow oss-eyebrow--orange', [
              .text('FlutterCon New York 2025 · Conference Talk'),
            ]),
            div(classes: 'oss-title', [.text('Server-Driven UI in Flutter')]),
            p(classes: 'oss-desc', [
              .text(
                'How to build flexible, config-driven UIs that ship new screens '
                'and flows without an app update — reducing release risk and '
                'unlocking product velocity.',
              ),
            ]),
            a(
              href: 'https://hubs.ly/Q03G2Tsj0',
              classes: 'btn btn-ghost btn-sm',
              [.text('Watch the Talk')],
            ),
          ]),
          img(
            src: '/assets/photo-fluttercon.png',
            alt: 'Jordan at FlutterCon',
            classes: 'speaker-photo',
          ),
        ]),
        // Open Food Facts card
        div(classes: 'oss-card-off', [
          div(classes: 'flex-1', [
            div(classes: 'oss-eyebrow oss-eyebrow--teal', [
              .text('Open Source · Active Contributor'),
            ]),
            div(classes: 'oss-title oss-title--sm', [.text('Open Food Facts')]),
            p(classes: 'oss-desc oss-desc--no-mb', [
              .text(
                '1M+ download global food database. Deep linking for sign-up '
                'and password recovery, spell-checker on the product edit screen, '
                'and code review across a distributed team.',
              ),
            ]),
          ]),
          a(
            href: 'https://github.com/openfoodfacts/smooth-app',
            classes: 'btn btn-ghost btn-sm flex-shrink-0',
            [.text('View on GitHub')],
          ),
        ]),
      ]),
    ]),
  ]);

  Component _stack() => div(id: 'about', [
    div(classes: 'section fade-up', [
      div(classes: 'section-label', [.text('05 — Stack & Skills')]),
      h2(classes: 'section-heading', [.text('Tools I trust.')]),
      div(classes: 'stack-grid', [
        _stackRow('UI', ['Flutter', 'Dart', 'Jaspr'], isTech: true),
        _stackRow('State', ['BLoC', 'Cubit', 'Riverpod'], isTech: true),
        _stackRow(
          'Backend',
          ['Firebase', 'Supabase', 'AWS', 'GraphQL', 'FastAPI'],
          isTech: true,
        ),
        _stackRow(
          'Tooling',
          ['CodeMagic', 'Git', 'Sentry', 'Talker'],
          isTech: false,
        ),
      ]),
    ]),
  ]);

  Component _stackRow(String label, List<String> items, {required bool isTech}) =>
      div(classes: 'stack-row', [
        span(classes: 'stack-group-label', [.text(label)]),
        div(classes: 'stack-chips', [
          for (final item in items)
            span(
              classes: 'tag ${isTech ? 'tag-tech' : 'tag-neutral'}',
              [.text(item)],
            ),
        ]),
      ]);

  Component _contact() => div(id: 'contact', [
    div(classes: 'section fade-up', [
      div(classes: 'section-label', [.text('06 — Contact')]),
      div(classes: 'contact-card', [
        h2(classes: 'contact-heading', [.text("Let's build something.")]),
        p(classes: 'contact-sub', [
          .text('Available for contract and full-time roles.'),
        ]),
        a(
          href: 'mailto:jordannnabugwu@gmail.com',
          classes: 'contact-email',
          [.text('jordannnabugwu@gmail.com')],
        ),
        div(classes: 'contact-links', [
          a(
            href: 'https://github.com/jnnabugwu',
            classes: 'btn btn-secondary',
            [.text('GitHub')],
          ),
          a(
            href: 'https://linkedin.com/in/jordan-nnabugwu',
            classes: 'btn btn-secondary',
            [.text('LinkedIn')],
          ),
        ]),
      ]),
    ]),
  ]);

  Component _footer() => footer([
    p([
      .text('Built with Jaspr · '),
      span([.text('©')]),
      .text(' 2025 Jordan Nnabugwu'),
    ]),
  ]);
}
