import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'pages/home.dart';
import 'pages/work_with_me.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return Router(
      routes: [
        Route(
          path: '/',
          title: 'Jordan Nnabugwu · Mobile apps for iOS and Android',
          builder: (context, state) => const Home(),
        ),
        Route(
          path: '/work-with-me',
          title: 'Work with me · Jordan Nnabugwu',
          builder: (context, state) => const WorkWithMe(),
        ),
      ],
    );
  }
}
