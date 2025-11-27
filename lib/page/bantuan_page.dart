import 'package:flutter/material.dart';
import 'package:vestanesia/page/bantuan2_page.dart';

class BantuanPage extends StatelessWidget {
  const BantuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = List.generate(
      12,
      (i) => "Apa Itu Vestanesia ?",
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          "Bantuan",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFF2F7FA),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: Colors.grey.shade300,
                width: 2,
              ),
            ),
            child: Column(
              children: List.generate(items.length, (index) {
                return Column(
                  children: [
                    ListTile(
                      visualDensity: const VisualDensity(vertical: -1),
                      dense: true,
                      title: Text(
                        items[index],
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),

                      trailing: (index < 3)
                          ? null
                          : const Icon(
                              Icons.chevron_right,
                              color: Colors.black45,
                            ),

                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => const BantuanPage2(),
                          ),
                        );
                      },
                    ),

                    if (index != items.length - 1)
                      const Divider(
                        color: Colors.black12,
                        height: 4,
                        indent: 16,
                        endIndent: 16,
                      ),
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
