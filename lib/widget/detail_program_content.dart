import 'package:flutter/material.dart';
import 'package:vestanesia/widget/bottom_sheet_program.dart';

class DetailProgramContent extends StatefulWidget {
  const DetailProgramContent({super.key});

  @override
  State<DetailProgramContent> createState() => _DetailProgramContentState();
}

class _DetailProgramContentState extends State<DetailProgramContent> {
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
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                        size: 22,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Detail Program",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: _navIcon('assets/share.png'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        // Gambar + badge
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/foto_pisang1.jpg',
                height: 150,
                width: double.infinity,
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    topRight: Radius.circular(12),
                  )
                ),
                child: const Text(
                  "Bagi Hasil 12 Bulan",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        
        const SizedBox(height: 20),
        
        // Judul
        const Text(
          "Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
        ),
        
        const SizedBox(height: 15),
        
        // Lokasi
        const Text(
          "Lokasi",
          style: TextStyle(color: Colors.grey, fontSize: 13),
        ),
        
        Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Alamat
          const Expanded(
            child: Text(
              "Jl. Macanda, Romangpolong, Kec. Somba Opu, Kabupaten Gowa, Sulawesi Selatan",
              style: TextStyle(fontSize: 13, height: 1.4),
            ),
          ),
        
          // Ikon di kanan
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: _navIcon('assets/direction.png'),
          ),
        ],
            ),
        
        
        const SizedBox(height: 20),
        
        // Periode & Imbal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Periode Imbal",
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            Text(
              "Presentase Imbal",
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Per 12 Bulan", style: TextStyle(fontSize: 13)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                "27%",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        
        const SizedBox(height: 20),
        
        // Download PDF section
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Berikut Rincian, Waktu Dan Proyeksi Laporan Keuangan Telah Dirangkum Dalam File Prospektus.",
                style: TextStyle(fontSize: 13, color: Colors.black87),
              ),
              const SizedBox(height: 8),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.green, width: 1.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: const Size(double.infinity, 45),
                  foregroundColor: Colors.green,
                ),
                child: const Text(
                  "Download Pdf",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        
        const SizedBox(height: 20),
        
        // Deskripsi
        const Text(
          "Deskripsi Program",
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black),
        ),
        const SizedBox(height: 6),
        const Text(
          "Pisang cavendish adalah jenis pisang yang saat ini sedang populer di Indonesia. "
          "Nama lain dari pisang cavendish adalah pisang ambon putih. Pisang cavendish dapat tumbuh di iklim tropis. "
          "Selain rasanya nikmat untuk dikonsumsi, pisang cavendish juga banyak dijadikan sebagai bahan baku makanan bayi. "
          "Misalnya saja diolah menjadi puree atau tepung pisang. Pisang cavendish sangat tepat dan cocok untuk makanan bayi, "
          "karena memiliki daging yang lunak sehingga nyaman untuk dikonsumsi balita.\n\n"
          "Pisang dapat tumbuh di daerah tropis baik di dataran rendah maupun dataran tinggi dengan ketinggian tidak lebih dari 1.600 m "
          "di atas permukaan laut. Suhu optimum untuk pertumbuhan adalah 27°C, dan suhu maksimumnya 38°C, "
          "dengan keasaman tanah (pH) 4,5–7,5.",
          style: TextStyle(fontSize: 13, height: 1.6),
        ),
        
        const SizedBox(height: 20),
        
        // Progress bar dan info investasi
        LinearProgressIndicator(
          value: 0.8,
          color: Colors.orange,
          backgroundColor: Colors.grey.shade300,
          minHeight: 7,
          borderRadius: BorderRadius.circular(5),
        ),
        const SizedBox(height: 12),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Total Investasi",
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            Text(
              "Target Dana",
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Rp 800 Juta",
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.w600,
                    fontSize: 13)),
            Text("Rp 1 Milyar", style: TextStyle(fontSize: 13)),
          ],
        ),
        
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Sisa 2 Hari Lagi",
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.w600, fontSize: 13),
            ),
            Text(
              "200 Unit Tersisa",
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ],
        ),

        const SizedBox(height: 15),

              // Tombol
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => showInvestasiBottomSheet(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: const Text(
                    "Mulai Investasi",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ),
              
            ],
          ),
        ),
        
      ),
    );
  }
}
