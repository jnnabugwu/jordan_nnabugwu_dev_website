library;

import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'app.dart';
import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(options: defaultServerOptions);

  runApp(Document(
    title: 'Jordan Nnabugwu — Flutter Engineer',
    styles: [
      css.import(
        'https://fonts.googleapis.com/css2?family=Syne:wght@400;500;600;700;800'
        '&family=IBM+Plex+Mono:wght@400;500'
        '&family=Figtree:wght@300;400;500;600&display=swap',
      ),
      css.import('/styles.css'),
    ],
    body: App(),
  ));
}
