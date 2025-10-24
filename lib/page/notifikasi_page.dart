import 'package:flutter/material.dart';
import 'package:vestanesia/widget/notifikasi_content.dart';

class NotifikasiPage extends StatefulWidget {
  const NotifikasiPage({super.key});

  @override
  State<NotifikasiPage> createState() => _NotifikasiPageState();
}

class _NotifikasiPageState extends State<NotifikasiPage> {
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
              color: Color(0x1A000000),
              offset: Offset(0, 3),
              blurRadius: 6,
              spreadRadius: 0,
            ),
          ],
        ),
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Stack(
              alignment: Alignment.center,
              children: [

                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/vesta.png',
                    height: 50,
                  ),
                ),

                const Center(
                  child: Text(
                    "Notifikasi",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: _navIcon('assets/chat.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          PembayaranBerhasilWidget(),
          ProgramBaruWidget(),
          PembayaranUlangWidget(),
          InvestasiWidget(),
          PembayaranBerhasilWidget(),
          ProgramBaruWidget(),
          PembayaranUlangWidget(),
          InvestasiWidget(),
          PembayaranBerhasilWidget(),
          ProgramBaruWidget(),
          PembayaranUlangWidget(),
          InvestasiWidget(),
        ],
      ),
    );
  }
}
