library;

import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'app.dart';
import 'main.server.options.dart';

const _siteUrl = 'https://jnnabugwu.dev';
const _description =
    'Mobile engineer. I build iOS and Android apps and get them into the stores, '
    'plus the backend, payments, AI features, and web. Available for contract and full-time work.';
const _fonts =
    'https://fonts.googleapis.com/css2?family=Funnel+Display:wght@400;500;600;700'
    '&family=Funnel+Sans:wght@400;500;600&display=swap';

/// Open Graph / Twitter tags so shared links show a title, blurb and image.
Component _og(String property, String content) =>
    meta(attributes: {'property': property}, content: content);

void main() {
  Jaspr.initializeApp(options: defaultServerOptions);

  runApp(Document(
    title: 'Jordan Nnabugwu',
    lang: 'en',
    meta: {
      'description': _description,
      'twitter:card': 'summary_large_image',
      'twitter:image': '$_siteUrl/og-image.jpg',
    },
    head: [
      // <link> instead of CSS @import so fonts and styles load in parallel.
      link(rel: 'preconnect', href: 'https://fonts.googleapis.com'),
      link(
        rel: 'preconnect',
        href: 'https://fonts.gstatic.com',
        attributes: {'crossorigin': ''},
      ),
      link(rel: 'stylesheet', href: _fonts),
      link(rel: 'stylesheet', href: '/styles.css'),
      _og('og:type', 'website'),
      _og('og:site_name', 'Jordan Nnabugwu'),
      _og('og:url', _siteUrl),
      _og('og:title', 'Jordan Nnabugwu · Mobile apps for iOS and Android'),
      _og('og:description', _description),
      _og('og:image', '$_siteUrl/og-image.jpg'),
      _og('og:image:width', '1200'),
      _og('og:image:height', '630'),
      _og('og:image:alt', 'Jordan Nnabugwu: I build mobile apps for iOS and Android.'),
    ],
    body: App(),
  ));
}
