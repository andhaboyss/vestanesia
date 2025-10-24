import 'package:flutter/material.dart';
import 'dart:async';
import 'package:vestanesia/page/pembayaran_detail_info.dart';

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
    await Future.delayed(const Duration(seconds: 2), () {});
    
    if (mounted) {
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context) => PembayaranDetailInfo(), 
        ),
      );
    }
  }

  @override
Widget build(BuildContext context) {
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