import 'package:flutter/material.dart';

class BantuanPage2 extends StatelessWidget {
  const BantuanPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: false,
        title: const Text(
          "Apa itu vestanesia ?",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Vestanesia adalah sebuah perusahaan finansial"
              "berbasi digital yang fokus pada usaha"
              "pertanian,peternakan,perikanan dan industry"
              "olahannya. Anda dapat bermitra dengan para"
              "petani terbaik melalui penyertaan modal pada"
              "kegiataan budidaya pertanian dengan  manfaat"
              "bagi hasil yang menguntungkan. Misi utama kami"
              "untuk memberikan akses keungan alternatif"
              "kepada petani, peternak, dan nelayan indonesia"
              "yang berada jauh di pelosok desa sehingga"
              "mereka dapat mengembangkan usaha menjadi"
              "lebih baik",

              style: TextStyle(
                color: Colors.black87,
                height: 1.45,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 320),

            const Text(
              "Masih memerlukan Bantuan ?",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 20),

            // Tombol WA
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1FAF38),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  elevation: 3,
                ),
                onPressed: () {
                  // aksi tekan tombol
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    const SizedBox(width: 10),
                    Image.asset(
                      "assets/whatsapp.png",
                      width: 33,
                      height: 32,
                    ),

                    SizedBox(width: 12),

                    const Text(
                      "Hubungi CS Vestanesia",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
