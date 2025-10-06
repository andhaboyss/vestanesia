import 'package:flutter/material.dart';
import 'dart:async';
import 'package:vestanesia/page/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome(); 
  }

  // Fungsi untuk menunda navigasi (ganti dengan halaman Login Anda)
  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 1), () {});
    
    if (mounted) {
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context) => LoginPage(), 
        ),
      );
    }
  }

  @override
Widget build(BuildContext context) {
  // Hapus 'const' di sini. Jika Anda membiarkannya,
  // semua widget anak harus const.
  return Scaffold( 
    backgroundColor: Colors.white, 
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/logo_landscape.png',
            height: 100, 
            width: 100,
          ),
        ],
      ),
    ),
  );
}
}