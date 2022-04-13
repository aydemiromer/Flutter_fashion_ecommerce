import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../view/auth/login_view.dart';

class Routes {
  static GoRouter router = GoRouter(routes: <GoRoute>[
    GoRoute(path: '/', builder: (BuildContext context, GoRouterState state) => const LoginViewPage()),
    
  ]);
}
