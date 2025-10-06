import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vestanesia/page/daftar_page.dart';
import 'package:vestanesia/page/login_page.dart';
import 'package:vestanesia/page/lupa_password.dart';
import 'package:vestanesia/page/splash_screen.dart';

class AppRoutes{
  static const String loginPage = "/login-pages";
  static const String daftarPage = "/daftar-page";
  static const String lupaPassword = "/lupa-password-page";
  static const String splashScreen = "/splash-screen-page";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final uri = Uri.tryParse(settings.name ?? '');
    final path = uri?.path ?? settings.name;

    switch (path) {
      case loginPage:
        return MaterialPageRoute(builder: (context) => const LoginPage(),);
      case daftarPage:
        return MaterialPageRoute(builder: (context) => const DaftarPage(),);
      case lupaPassword:
        return MaterialPageRoute(builder: (context) => const LupaPassword(),);
      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen(),);
    }
  }
}   