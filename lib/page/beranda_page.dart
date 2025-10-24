import 'package:flutter/material.dart';
import 'package:vestanesia/widget/beranda_content.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  Widget _navIcon(String path) {
    return Image.asset(
      path,
      height: 26,
      width: 26,
      errorBuilder: (context, error, stackTrace) =>
          const Icon(Icons.image_not_supported, color: Colors.grey),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x1A000000), // abu transparan
                offset: Offset(0, 3), // arah bayangan ke bawah
                blurRadius: 6, // lembut
                spreadRadius: 0,
              ),
            ],
          ),
          child: SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  // 🔹 Logo kiri
                  Image.asset(
                    'assets/vesta.png',
                    height: 50,
                  ),
                  const SizedBox(width: 8),

                  const Text(
                    "Vestanesia",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),

                  const Spacer(),
                  _navIcon('assets/chat.png'),
                ],
              ),
            ),
          ),
        ),
      ),




      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          CardPetani(),
          CardPetani(),
        ],
      ),
    );
  }
}
