import 'package:flutter/material.dart';
import 'package:vestanesia/page/login_page.dart';

class LupaPassword extends StatefulWidget {
  const LupaPassword({super.key});

  @override
  State<LupaPassword> createState() => _LupaPasswordState();
}

class _LupaPasswordState extends State<LupaPassword> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();

  String? _emailErrorText;

  void _login() {
    // Reset pesan error
    setState(() {
      _emailErrorText = null;
    });

    bool isValid = true;

    // Validasi Email
    if (_emailController.text.isEmpty) {
      setState(() {
        _emailErrorText = 'Mohon Isi Form Email';
      });
      isValid = false;
    }

    if (isValid) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage(),)
      );
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LoginScreenContent(
      formKey: _formKey,
      emailController: _emailController,
      onLoginPressed: _login,
      emailErrorText: _emailErrorText,
    );
  }
}

// --- Widget LoginScreenContent sebagai StatelessWidget ---

class LoginScreenContent extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final VoidCallback onLoginPressed;
  final String? emailErrorText;

  const LoginScreenContent({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.onLoginPressed,
    this.emailErrorText,
  });

  // Fungsi untuk membuat dekorasi input yang seragam
  InputDecoration _getInputDecoration({
    required String hintText, 
    Widget? suffixIcon, 
    String? errorText
  }) {
    // Definisi border default (berwarna abu-abu terang)
    const OutlineInputBorder defaultBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(color: Color(0xFFE0E0E0), width: 1.0), // Warna border abu-abu terang
    );

    return InputDecoration(
      hintText: hintText,
      errorText: errorText, // Menggunakan errorText bawaan TextField
      hintStyle: const TextStyle(color: Color(0xFFBDBDBD)), // Warna placeholder yang lebih terang
      border: defaultBorder,
      enabledBorder: defaultBorder,
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        borderSide: BorderSide(color: Color(0xFF4CAF50), width: 1.5), // Border hijau saat fokus
      ),
      filled: true,
      fillColor: Colors.white, // Latar belakang putih
      contentPadding: const EdgeInsets.symmetric(
          vertical: 16.0, horizontal: 16.0),
      suffixIcon: suffixIcon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 100.0), // Padding atas
            // Logo Vestanesia
            Center(
              child: Column(
                children: [
                   Image.asset(
                    'assets/logo.png',
                    height: 100, 
                    width: 300,
                  ),

                  const Text(
                    "Lupa Kata Sandi",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40.0),
            // Deskripsi
            const Text(
              'Daftar akun dan mulai maskimalkan investasimu dengan Vestanesia.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 40.0),

            // --- Form Email ---
            const Text(
              'Email',
              style: TextStyle(
                color: Colors.grey, // Diubah menjadi lebih gelap agar kontras
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              // Menggunakan errorText bawaan InputDecoration, bukan widget Padding
              decoration: _getInputDecoration(
                hintText: 'Masukkan Email',
                errorText: emailErrorText, 
              ),
            ),
            
            const SizedBox(height: 20.0),
            const SizedBox(height: 8.0),

            // --- Tombol Masuk Akun ---
            ElevatedButton(
              onPressed: onLoginPressed, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Hijau
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 0, // Menghapus bayangan
              ),
              child: const Text(
                'Kirim',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}