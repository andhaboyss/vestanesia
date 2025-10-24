import 'package:flutter/material.dart';
import 'package:vestanesia/widget/card_program.dart';

class ProgramPage extends StatefulWidget {
  const ProgramPage({super.key});

  @override
  State<ProgramPage> createState() => _ProgramPageState();
}

class _ProgramPageState extends State<ProgramPage> {
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
                    "Program",
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
        children: [
          SizedBox(height: 16),
          CardIsi()
        ],
      ),
    );
  }
}
