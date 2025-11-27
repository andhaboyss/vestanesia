import 'package:flutter/material.dart';
import 'package:vestanesia/widget/profil_content.dart';

class ProfilAkun extends StatefulWidget {
  const ProfilAkun({super.key});

  @override
  State<ProfilAkun> createState() => _ProfilAkunState();
}

class _ProfilAkunState extends State<ProfilAkun> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x1A000000),
                offset: Offset(0, 2),
                blurRadius: 4,
              ),
            ],
          ),
          
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black87),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 87),
                  const Text(
                    'Lainnya',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.black87,
                    ),
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
          ProfilContent()
        ],
      ),
    );
  }
}
