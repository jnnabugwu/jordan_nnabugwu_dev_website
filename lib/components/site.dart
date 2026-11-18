import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Shared links used across pages.
const calendlyUrl = 'https://calendly.com/jnnabugwu';
const email = 'jordannnabugwu@gmail.com';
const githubUrl = 'https://github.com/jnnabugwu';
const linkedinUrl = 'https://linkedin.com/in/jordan-nnabugwu';

/// Organic blob outlines in a 0–100 box, matched to the green
/// "organic art" reference the palette is taken from.
const blobA =
    'M91.45 47.81 C89.93 57.46 85.70 70.02 79.98 77.56 C74.26 85.11 64.98 90.72 57.12 93.07 '
    'C49.26 95.42 40.54 95.39 32.82 91.67 C25.11 87.96 14.63 79.21 10.84 70.78 C7.04 62.35 7.73 51.41 '
    '10.08 41.07 C12.43 30.73 17.84 14.29 24.93 8.76 C32.01 3.22 41.91 6.03 52.60 7.85 C63.30 9.67 '
    '82.61 13.01 89.09 19.67 C95.56 26.33 92.97 38.16 91.45 47.81Z';
const blobB =
    'M94.50 45.51 C94.43 54.51 84.65 71.78 77.89 80.25 C71.13 88.71 63.95 96.91 53.95 96.31 '
    'C43.96 95.71 24.74 84.38 17.91 76.65 C11.08 68.92 12.91 58.28 12.99 49.94 C13.07 41.61 12.07 32.33 '
    '18.39 26.64 C24.70 20.96 40.89 15.89 50.88 15.83 C60.86 15.77 71.05 21.33 78.32 26.27 C85.60 31.22 '
    '94.57 36.52 94.50 45.51Z';
const blobC =
    'M81.96 47.46 C82.62 56.16 77.36 68.49 71.43 75.22 C65.51 81.96 57.26 89.63 46.42 87.86 '
    'C35.57 86.10 10.74 73.83 6.38 64.62 C2.02 55.42 14.24 40.86 20.26 32.64 C26.27 24.41 34.61 16.87 '
    '42.47 15.27 C50.34 13.67 60.89 17.68 67.47 23.04 C74.05 28.41 81.30 38.77 81.96 47.46Z';
const blobD =
    'M96.10 46.66 C96.34 57.15 92.35 73.64 87.37 80.44 C82.38 87.23 73.82 85.85 66.19 87.41 '
    'C58.56 88.98 49.87 92.57 41.58 89.82 C33.29 87.08 21.80 77.65 16.44 70.95 C11.08 64.25 9.91 56.97 '
    '9.43 49.62 C8.96 42.26 8.41 34.13 13.57 26.82 C18.74 19.50 33.20 8.65 40.43 5.72 C47.66 2.80 '
    '49.34 7.31 56.93 9.27 C64.52 11.24 79.44 11.30 85.97 17.53 C92.50 23.76 95.87 36.18 96.10 46.66Z';

/// Clip paths used by `.photo` (blobclip) and `.face` (blobclip2) in styles.css.
Component blobClipDefs() => RawText(
  '<svg width="0" height="0" style="position:absolute" aria-hidden="true"><defs>'
  '<clipPath id="blobclip" clipPathUnits="objectBoundingBox"><path transform="scale(.01)" d="$blobA"/></clipPath>'
  '<clipPath id="blobclip2" clipPathUnits="objectBoundingBox"><path transform="scale(.01)" d="$blobD"/></clipPath>'
  '</defs></svg>',
);

/// A decorative filled blob.
Component blobShape(String cls, String path, String fill) => RawText(
  '<svg class="$cls" viewBox="0 0 100 100" preserveAspectRatio="none" aria-hidden="true">'
  '<path fill="$fill" d="$path"/></svg>',
);

class SiteHeader extends StatelessComponent {
  const SiteHeader({super.key});

  @override
  Component build(BuildContext context) => header([
    div(classes: 'wrap', [
      a(href: '/', classes: 'name', [.text('Jordan Nnabugwu')]),
      nav(attributes: {'aria-label': 'Main navigation'}, [
        a(href: '/#work', [.text('Work')]),
        a(href: '/work-with-me', [.text('Work with me')]),
        a(href: calendlyUrl, classes: 'btn', [.text('Book a call')]),
      ]),
    ]),
  ]);
}

class SiteFooter extends StatelessComponent {
  const SiteFooter({super.key});

  @override
  Component build(BuildContext context) => footer([
    div(classes: 'wrap', [
      .text('Built with Jaspr. © 2026 Jordan Nnabugwu · '),
      a(href: githubUrl, classes: 'tl', [.text('GitHub')]),
      .text(' · '),
      a(href: linkedinUrl, classes: 'tl', [.text('LinkedIn')]),
    ]),
  ]);
}

/// The green closing call-to-action band.
Component ctaBand({
  required String heading,
  required String body,
  String? secondaryHref,
  String secondaryText = 'or email me',
}) => div(classes: 'cta', [
  h2([.text(heading)]),
  p([.text(body)]),
  div(classes: 'links', [
    a(href: calendlyUrl, classes: 'btn', [.text('Book a call')]),
    a(href: secondaryHref ?? 'mailto:$email', classes: 'tl', [.text(secondaryText)]),
  ]),
]);

/// Section heading with an optional one-line note beside it.
Component sectionHead(String title, [String? note]) => div(classes: 'sh', [
  h2([.text(title)]),
  if (note != null) p([.text(note)]),
]);

/// A two-column list row: name and context on the left, details on the right.
Component listRow({
  required String name,
  required String context,
  required String description,
  required String stack,
  List<(String, String)> links = const [],
}) => div(classes: 'row', [
  div([
    h3([.text(name)]),
    div(classes: 'ctx', [.text(context)]),
  ]),
  div([
    p(classes: 'desc', [.text(description)]),
    div(classes: 'stack', [.text(stack)]),
    if (links.isNotEmpty)
      div(classes: 'rl', [
        for (final (label, href) in links) a(href: href, classes: 'tl', [.text(label)]),
      ]),
  ]),
]);
