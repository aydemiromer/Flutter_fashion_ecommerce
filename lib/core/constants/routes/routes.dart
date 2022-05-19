import 'package:fashion_ecommerce_app/view/auth/forgot_password_view.dart';
import 'package:fashion_ecommerce_app/view/auth/login_view.dart';
import 'package:fashion_ecommerce_app/view/auth/register_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static GoRouter router = GoRouter(routes: <GoRoute>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const LoginViewPage()),
    GoRoute(
        path: '/Register',
        builder: (BuildContext context, GoRouterState state) =>
            const RegisterPageView()),
    GoRoute(
        path: '/ForgotPassword',
        builder: (BuildContext context, GoRouterState state) =>
            const ForgotPasswordView()),
    GoRoute(
        path: '/Login',
        builder: (BuildContext context, GoRouterState state) =>
            const RegisterPageView()),
  ]);
}
