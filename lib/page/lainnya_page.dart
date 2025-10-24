import 'package:flutter/material.dart';
import 'package:vestanesia/widget/lainnya_content.dart';

class LainnyaPage extends StatefulWidget {
  const LainnyaPage({super.key});

  @override
  State<LainnyaPage> createState() => _LainnyaPageState();
}

class _LainnyaPageState extends State<LainnyaPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text(
                    'Lainnya',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.black87,
                    ),
                  ),
                  centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ProfileWidget(),
        ],
      ),
    );
  }
}
