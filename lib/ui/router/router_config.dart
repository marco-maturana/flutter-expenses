import 'package:go_router/go_router.dart';

import 'package:flutter_expenses/ui/pages/home/home_page.dart';

GoRouter routeConfig() => GoRouter(initialLocation: '/', routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      )
    ]);
