library;

import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'app.dart';
import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(options: defaultServerOptions);

  runApp(Document(
    title: 'Jordan Nnabugwu',
    meta: {
      'description':
          'Mobile engineer. I build iOS and Android apps and get them into the stores, '
          'plus the backend, payments, AI features, and web. Available for contract and full-time work.',
    },
    styles: [
      css.import(
        'https://fonts.googleapis.com/css2?family=Funnel+Display:wght@400;500;600;700'
        '&family=Funnel+Sans:wght@400;500;600&display=swap',
      ),
      css.import('/styles.css'),
    ],
    body: App(),
  ));
}
