import 'package:flutter/material.dart';
import 'package:flutter_balcoder_firstapp/ui/auth/login/login.dart';
import 'package:flutter_balcoder_firstapp/ui/auth/register/register.dart';
import 'package:flutter_balcoder_firstapp/ui/home/home_page.dart';
import 'package:flutter_balcoder_firstapp/ui/user/user_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String form = '/form';
  static const String login = '/login';
  static const String register = '/register';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => const MyHomePage());
      case form:
        return MaterialPageRoute(builder: (context) => const UserPage());
      case login:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case register:
        return MaterialPageRoute(builder: (context) => const RegisterPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
