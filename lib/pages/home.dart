import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/site.dart';

const _sduiPostUrl =
    'https://www.verygood.ventures/blog/how-server-driven-ui-sdui-changed-the-way-i-think-about-mobile-development';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      blobClipDefs(),
      const SiteHeader(),
      main_(classes: 'wrap', [
        _hero(),
        _proof(),
        _offers(),
        _work(),
        _speaking(),
        _projects(),
        ctaBand(
          heading: 'Have an app to build or fix?',
          body:
              "Book a call and tell me what you're building. "
              "I'll tell you if I'm a fit and what it would take.",
        ),
      ]),
      const SiteFooter(),
    ]);
  }

  Component _hero() => div(classes: 'hero', [
    div([
      h1([
        .text('I build mobile apps for iOS and Android, '),
        span(classes: 'g', [.text('and get them into the respective stores.')]),
      ]),
      p([
        .text(
          'Plus everything around them: the backend, payments, AI features, '
          'and the web side in React and Next.js. Available for contract work '
          'and full-time roles.',
        ),
      ]),
      p(classes: 'built', [.text('5+ years shipping, built in Flutter.')]),
      div(classes: 'links', [
        a(href: calendlyUrl, classes: 'btn', [.text('Book a call')]),
        a(href: '/work-with-me', classes: 'tl', [.text('What you can hire me for')]),
      ]),
    ]),
    div(classes: 'art', [
      blobShape('b1', blobB, '#285744'),
      blobShape('b2', blobC, '#57B392'),
      div(classes: 'photo', [
        img(
          src: '/assets/photo-hero-1400.jpg',
          alt: 'Jordan in a hot air balloon basket',
        ),
      ]),
      blobShape('b3', blobC, '#A5DEC4'),
    ]),
  ]);

  Component _proof() => p(classes: 'proof', [
    .text('Shipped for '),
    b([.text('SkillTap')]),
    .text(', '),
    b([.text('Vamp')]),
    .text(', '),
    b([.text('Very Good Ventures')]),
    .text(" (Scooter's Coffee, Trackhouse Racing), "),
    b([.text('Open Food Facts')]),
    .text(' (1M+ downloads), and '),
    b([.text('Whisker')]),
    .text(
      ' (500K users). Two apps of my own on the App Store. '
      'FlutterCon speaker, 2025 and 2026.',
    ),
  ]);

  Component _offer(String title, String forWho, String body, [String? proof]) =>
      div(classes: 'offer', [
        h3([.text(title)]),
        div(classes: 'for', [.text(forWho)]),
        p([.text(body)]),
        if (proof != null) div(classes: 'proofline', [.text(proof)]),
      ]);

  Component _offers() => section([
    sectionHead('What you can hire me for', 'Pick the one that sounds like your problem.'),
    div(classes: 'offers', [
      _offer(
        'Build your app',
        'You have an idea or a design and a deadline.',
        'An iOS and Android app, the backend it needs, and the App Store and '
            'Google Play submission.',
        'Steady and MoodTune: built and shipped solo',
      ),
      _offer(
        'Take over your app',
        'You inherited an app with no docs, no tests, and no handover.',
        'I find the security holes, fix them, set up tests and releases, and '
            'get it shipping again.',
        'SkillTap: sole engineer, live on both stores',
      ),
      _offer(
        'Add AI to your app',
        'You want AI features people can trust.',
        'On-device models or a server-side LLM, with fallbacks, kill switches, '
            'and usage limits.',
        'On-device coach on Apple Foundation Models',
      ),
      _offer(
        'Join your team',
        'You need another senior mobile engineer.',
        'Contract or full-time. Mobile first, plus Node, Python, React, and '
            'Next.js when the work crosses over.',
      ),
    ]),
    p(classes: 'more', [
      a(href: '/work-with-me', classes: 'tl', [.text('What you get and how it works')]),
    ]),
  ]);

  Component _work() => section(id: 'work', [
    sectionHead('Selected work', 'What I built and what changed.'),
    listRow(
      name: 'SkillTap',
      context: 'Contract · Aug 2026 to now',
      description:
          'Sole engineer on a two-sided hiring platform I took over from an '
          'outsourced team that left no handover, docs, or tests. Redesigned the '
          'whole app onto a new design system, took it live on the App Store and '
          'Google Play, and fixed a cross-tenant data leak and an account-takeover '
          'hole in the API. The client had no way to charge employers, so I '
          "proposed, priced, and shipped a \$197-per-post Stripe checkout in three "
          "days, within Apple's and Google's payment rules.",
      stack: 'Node.js, PostgreSQL, Stripe, Vue, Flutter',
    ),
    listRow(
      name: 'Vamp',
      context: 'Full-time · Sept to Oct 2026',
      description:
          'Electric rideshare in Dallas. Built FlightAware flight tracking for '
          'airport pickups, so a delay moves the pickup and notifies the rider and '
          'driver once. Built driver onboarding with SSNs encrypted in a collection '
          'the app never sees. 60 merged PRs across 5 repos in 5 weeks.',
      stack: 'Node.js, TypeScript, Next.js, Flutter',
    ),
    listRow(
      name: 'What Are You Reading',
      context: 'Fulcro Labs · May to Aug 2026',
      description:
          "Got a two-person team's social reading app through App Store review: "
          'fixed signing on iOS and Android, built report, block, and '
          'terms-acceptance flows, and set up Codemagic CI/CD. Live on the App Store.',
      stack: 'Supabase, Codemagic, Flutter',
    ),
    listRow(
      name: "Scooter's Coffee",
      context: 'Very Good Ventures · 2025 to 2026',
      description:
          'Built the CI/CD pipeline for the move from native apps to Flutter, so '
          'all four developers shipped builds automatically, and cut check time '
          'per PR from 15 to 8 minutes.',
      stack: 'Codemagic, Firebase, Flutter',
    ),
    listRow(
      name: 'Trackhouse Racing',
      context: 'Very Good Ventures · 2025 to 2026',
      description:
          'Seek and playback for a race telemetry video tool. Proved with a '
          "standalone script that the backend data model couldn't resume "
          'mid-shard, shipped app-side fixes, and gave the backend team a proposal '
          'for what the API needed.',
      stack: 'Talker, Flutter',
    ),
    listRow(
      name: 'Open Food Facts',
      context: 'Open source · 2024 to 2025',
      description:
          'A food database app with over 1 million Google Play downloads. Built '
          'deep linking for sign-up and password recovery, and a spell-checker on '
          'the product edit screen.',
      stack: 'Dart, Flutter',
      links: [('GitHub', 'https://github.com/openfoodfacts/smooth-app')],
    ),
    listRow(
      name: 'Whisker',
      context: 'Full-time · 2021 to 2023',
      description:
          'The Litter-Robot app, 500,000 users. Built features end to end, from '
          'the app UI through AWS AppSync GraphQL to DynamoDB, and added VoiceOver '
          'and TalkBack support.',
      stack: 'AWS AppSync, GraphQL, DynamoDB, Flutter',
    ),
  ]);

  Component _speaking() => section(id: 'talk', [
    div(classes: 'talk', [
      div([
        div(classes: 'k', [.text('Speaking & writing')]),
        ul(classes: 'talks', [
          li([
            div(classes: 'when', [.text('FlutterCon USA · New York, 2025 · Lightning talk')]),
            h3([.text('Server-Driven UI in Flutter')]),
            p([
              .text(
                'Letting the backend define layouts and components, so UI changes '
                'ship without waiting on App Store review.',
              ),
            ]),
          ]),
          li([
            div(classes: 'when', [.text('FlutterCon · Orlando, 2026')]),
            h3([.text('Monorepos for enterprise Flutter')]),
          ]),
          li([
            div(classes: 'when', [.text('Very Good Ventures blog · Aug 2025')]),
            h3([.text('How Server-Driven UI changed the way I think about mobile development')]),
            p([
              .text(
                'Where server-driven UI pays off (promo banners, personalization, '
                "A/B tests) and where it doesn't (animations, gesture-heavy screens, "
                'offline-first apps).',
              ),
            ]),
            a(href: _sduiPostUrl, classes: 'tl', [.text('Read the post')]),
          ]),
        ]),
      ]),
      div(classes: 'face', [
        img(src: '/assets/photo-fluttercon.png', alt: 'Jordan speaking at FlutterCon'),
      ]),
    ]),
  ]);

  Component _projects() => section(id: 'projects', [
    sectionHead('My own apps', 'Built and shipped alone.'),
    listRow(
      name: 'Steady',
      context: 'On the App Store · Aug 2026',
      description:
          'A calm weekly view of eating and activity for people who already track '
          'their food. Calories next to energy burned, steps and weight trend from '
          'Apple Health, and a coach that runs entirely on the phone with Apple '
          'Foundation Models. No account, no servers.',
      stack: 'Swift, HealthKit, Apple Foundation Models, Flutter',
      links: [
        ('App Store', 'https://apps.apple.com/us/app/steady-calorie-check-in/id6826394186'),
        ('Site', '/steady/'),
        ('GitHub', 'https://github.com/jnnabugwu/steady'),
      ],
    ),
    listRow(
      name: 'MoodTune',
      context: 'iOS, Android, and web · Dec 2025',
      description:
          'Upload a song and get its mood. The audio model runs on the phone, with '
          'a timeout, a backend fallback, and a remote kill switch. 86% test '
          'coverage, with CI blocking anything under 80%.',
      stack: 'FastAPI, Supabase, LiteRT, Flutter',
      links: [
        ('Site', 'https://getmoodtune.com'),
        ('GitHub', 'https://github.com/jnnabugwu/moodtune_app'),
      ],
    ),
    listRow(
      name: 'BT Speaker Studio',
      context: 'Side project · Raspberry Pi',
      description:
          'A Bluetooth speaker running on a Raspberry Pi Zero 2W, with a real-time '
          'FFT visualizer and an LED ring synced to the beat over typed WebSocket '
          'events. Comes with a companion mobile app, in a Melos monorepo with '
          'GitHub Actions CI.',
      stack: 'Melos, WebSockets, GitHub Actions, Flutter',
      links: [('GitHub', 'https://github.com/jnnabugwu/bt_speaker')],
    ),
  ]);
}
