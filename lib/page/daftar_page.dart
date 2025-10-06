import 'package:flutter/material.dart';
import 'package:vestanesia/common/app_routes.dart';
import 'package:vestanesia/page/login_page.dart';

class DaftarPage extends StatefulWidget {
  const DaftarPage({super.key});

  @override
  State<DaftarPage> createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _emailErrorText;
  String? _passwordErrorText;

  bool _isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void _login() {
    // Reset pesan error
    setState(() {
      _emailErrorText = null;
      _passwordErrorText = null;
    });

    bool isValid = true;

    // Validasi Email
    if (_emailController.text.isEmpty) {
      setState(() {
        _emailErrorText = 'Mohon Isi Form Email';
      });
      isValid = false;
    }

    // Validasi Password
    if (_passwordController.text.isEmpty) {
      setState(() {
        _passwordErrorText = 'Mohon Isi Form Password';
      });
      isValid = false;
    }

    if (isValid) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LoginScreenContent(
      formKey: _formKey,
      emailController: _emailController,
      passwordController: _passwordController,
      onLoginPressed: _login,
      emailErrorText: _emailErrorText,
      passwordErrorText: _passwordErrorText,
      
      isPasswordVisible: _isPasswordVisible, 
      onTogglePasswordVisibility: _togglePasswordVisibility,
    );
  }
}

// --- Widget LoginScreenContent sebagai StatelessWidget ---

class LoginScreenContent extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onLoginPressed;
  final String? emailErrorText;
  final String? passwordErrorText;
  
  final bool isPasswordVisible;
  final VoidCallback onTogglePasswordVisibility;

  const LoginScreenContent({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.onLoginPressed,
    this.emailErrorText,
    this.passwordErrorText,
    
    required this.isPasswordVisible, 
    required this.onTogglePasswordVisibility,
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

            // --- Form Password ---
            const Text(
              'Password',
                style: TextStyle(
                  color: Colors.grey, // Diubah menjadi lebih gelap agar kontras
                  fontWeight: FontWeight.w500,
              )
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: passwordController,
              obscureText: !isPasswordVisible, 
              // Menggunakan errorText bawaan InputDecoration, bukan widget Padding
              decoration: _getInputDecoration(
                hintText: 'Masukkan Password',
                errorText: passwordErrorText,
                // SuffixIcon menggunakan IconButton yang memanggil toggle function
                suffixIcon: IconButton(
                  icon: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: const Color(0xFFBDBDBD), // Warna ikon mata lebih terang
                  ),
                  onPressed: onTogglePasswordVisibility, 
                ),
              ),
            ),

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
                'Daftar Akun',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 30.0),

            // Teks atau masuk akun dengan
            const Center(
              child: Text(
                'Atau daftar dengan',
                style: TextStyle(color: Colors.grey),
              ),
            ),

            const SizedBox(height: 20.0),

            // --- Tombol Sosial Login (Google & Facebook) ---
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.g_mobiledata, color: Color(0xFFDB4437)),
                    label: const Text(
                      'Google', 
                      style: TextStyle(
                        color: Colors.black, 
                        fontWeight: FontWeight.bold
                        )
                      ),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      side: const BorderSide(color: Color(0xFFEA4335), width: 1.0), // Border abu-abu terang
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.facebook, color: Color(0xFF4267B2)),
                    label: const Text(
                      'Facebook', 
                      style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold
                      )
                    ),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      side: const BorderSide(color: Color(0xFF4267B2), width: 1.0), // Border abu-abu terang
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40.0),

            // Link Daftar
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Sudah punya akun?'),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.loginPage);
                  },
                  child: const Text(
                    'Login di sini',
                    style: TextStyle(
                      color: Color(0xFF4CAF50),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40.0), // Padding bawah
          ],
        ),
      ),
    );
  }
}