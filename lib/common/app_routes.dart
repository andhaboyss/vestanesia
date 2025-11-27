import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vestanesia/page/beranda_page.dart';
import 'package:vestanesia/page/daftar_page.dart';
import 'package:vestanesia/page/formulir_mitra_page.dart';
import 'package:vestanesia/page/lengkapi_data_page.dart';
import 'package:vestanesia/page/lengkapi_data2_page.dart';
import 'package:vestanesia/page/login_page.dart';
import 'package:vestanesia/page/forgot_password_page.dart';
import 'package:vestanesia/page/profil_akun_page.dart';
import 'package:vestanesia/page/splash_screen.dart';

class AppRoutes{
  static const String loginPage = "/login-pages";
  static const String daftarPage = "/daftar-page";
  static const String lupaPassword = "/lupa-password-page";
  static const String splashScreen = "/splash-screen-page";
  static const String lengkapiData = "/lengkapi-data";
  static const String lengkapiData2 = "/lengkapi-data2";
  static const String formulirMitra = "/formulir-mitra";
  static const String mywidgetSTF = "/mywidget-stf";
  static const String berandaPage = "/beranda-page";
  static const String profilPage = "/profil-page";

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
      case lengkapiData:
        return MaterialPageRoute(builder: (context) => const LengkapiData(),);
      case lengkapiData2:
        return MaterialPageRoute(builder: (context) => const LengkapiData2(),);
      case formulirMitra:
        return MaterialPageRoute(builder: (context) => const FormulirMitra(),);
      case berandaPage:
        return MaterialPageRoute(builder: (context) => const BerandaPage(),);
        case profilPage:
        return MaterialPageRoute(builder: (context) => const ProfilAkun(),);
      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen(),);
    }
  }
}   