import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/site.dart';

class WorkWithMe extends StatelessComponent {
  const WorkWithMe({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      blobClipDefs(),
      const SiteHeader(),
      main_(classes: 'wrap', [
        _intro(),
        _about(),
        _goodAt(),
        _offers(),
        _howItWorks(),
        ctaBand(
          heading: 'Ready when you are.',
          body:
              "Book a call and tell me what you're building. "
              "If I'm not the right fit, I'll say so.",
          secondaryHref: 'mailto:$email?subject=Project%20inquiry',
        ),
      ]),
      const SiteFooter(),
    ]);
  }

  Component _intro() => div(classes: 'page-h', [
    h1([.text('Work with me')]),
    p([
      .text(
        "I'm a mobile engineer who ships the whole thing: the app, the backend, "
        "payments, and the App Store release. Here's what you get if you hire me, "
        'on contract or full-time.',
      ),
    ]),
    div(classes: 'links', [
      a(href: calendlyUrl, classes: 'btn', [.text('Book a call')]),
    ]),
  ]);

  Component _about() => section([
    div(classes: 'about', [
      div([
        sectionHead('Who I am'),
        p([
          .text(
            "I'm Jordan. I've spent 5+ years shipping iOS and Android apps, at Very "
            "Good Ventures, at startups, and on contract. I've worked on apps with "
            '500K users and 1M+ downloads, built and shipped two apps of my own, and '
            'spoken at FlutterCon in 2025 and 2026. On mobile I build in Flutter; on '
            'the web, React and Next.js.',
          ),
        ]),
        p([
          .text(
            "I'm usually the person who owns the parts other people skip: auth and "
            "security, tests, monitoring, and getting through App Review. I'm based "
            'in Dallas and moving to New York.',
          ),
        ]),
      ]),
      div(classes: 'face', [
        img(src: '/assets/photo-fluttercon.png', alt: 'Jordan Nnabugwu'),
      ]),
    ]),
  ]);

  Component _good(String title, String body) => div([
    h3([.text(title)]),
    p([.text(body)]),
  ]);

  Component _goodAt() => section([
    sectionHead("What I'm good at"),
    div(classes: 'good', [
      _good(
        'Shipping, not just coding',
        'App Store Connect, Google Play, TestFlight, fastlane, Codemagic. Your app '
            'actually reaches people.',
      ),
      _good(
        'Apps nobody handed over',
        "I've taken over codebases with no docs or tests, found the security "
            'holes, and made them safe to change.',
      ),
      _good(
        'Payments and trust',
        "Stripe within Apple's and Google's rules, Sign in with Apple, encrypted "
            'sensitive data, health data kept on the phone.',
      ),
      _good(
        'AI with a safety net',
        'On-device models with fallbacks and kill switches, and LLM calls through '
            'a proxy with App Attest and usage caps.',
      ),
    ]),
  ]);

  Component _offer({
    required String title,
    required String forWho,
    required List<String> items,
    required String proof,
  }) => div(classes: 'offer', [
    h3([.text(title)]),
    div(classes: 'for', [.text(forWho)]),
    ul([
      for (final item in items) li([.text(item)]),
    ]),
    div(classes: 'proofline', [.text(proof)]),
  ]);

  Component _offers() => section([
    sectionHead('What you can hire me for', 'What you get with each.'),
    div(classes: 'offers', [
      _offer(
        title: 'Build your app',
        forWho: 'For founders and teams with an idea or a design and a deadline.',
        items: [
          'iOS and Android app, from one codebase',
          'Web app or admin dashboard in React and Next.js',
          'Backend on Supabase, Node, or FastAPI',
          'Sign-in, payments, and push notifications',
          'CI/CD and the App Store and Google Play submission',
        ],
        proof: 'Done before: Steady, MoodTune',
      ),
      _offer(
        title: 'Take over your app',
        forWho: "For teams who inherited an app that's fragile or stuck.",
        items: [
          "A written list of what's broken and what's risky",
          'Security fixes',
          'Tests and CI on the parts that matter',
          'A redesign onto a design system, if you need one',
        ],
        proof: 'Done before: SkillTap',
      ),
      _offer(
        title: 'Add AI to your app',
        forWho: 'For teams that want AI features without the risk.',
        items: [
          'On-device models (Apple Foundation Models, LiteRT)',
          'Server-side LLMs through a secure proxy',
          'Fallbacks, kill switches, and retry queues',
          'Usage caps and privacy-safe logging',
        ],
        proof: "Done before: Steady's coach, MoodTune's audio model",
      ),
      _offer(
        title: 'Join your team',
        forWho: 'For teams that need another senior mobile engineer.',
        items: [
          'Contract or full-time',
          'Mobile first, plus Node, Python, React, and Next.js when the work crosses over',
          'Code review, CI/CD, and mentoring',
        ],
        proof: 'Done before: Very Good Ventures, Vamp, Whisker',
      ),
    ]),
  ]);

  Component _step(String title, String body) => div(classes: 'step', [
    h3([.text(title)]),
    p([.text(body)]),
  ]);

  Component _howItWorks() => section([
    sectionHead('How it works'),
    div(classes: 'steps', [
      _step(
        'Book a call',
        'Pick a time on my Calendly and bring a few lines about the app and your '
            'deadline. No deck needed.',
      ),
      _step(
        'Get a plan',
        'After the call I send you the scope, timeline, and cost in writing.',
      ),
      _step(
        'Watch it get built',
        'You get a build on your phone every week through TestFlight and Play '
            'testing, so there are no surprises.',
      ),
    ]),
  ]);
}
