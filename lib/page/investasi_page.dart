import 'package:flutter/material.dart';
import 'package:vestanesia/page/detail_investasi_page.dart';

class InvestasikuPage extends StatefulWidget {
  const InvestasikuPage({super.key});

  @override
  State<InvestasikuPage> createState() => _InvestasikuPageState();
}

class _InvestasikuPageState extends State<InvestasikuPage> {
  int selectedTab = 0; // 0 = sedang berjalan, 1 = selesai

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Investasiku",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            color: Colors.white,
            child: Row(
              children: [

                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => selectedTab = 0),
                    child: Container(
                      height: 42,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: selectedTab == 0
                            ? const Color(0xFF168039)
                            : Colors.grey[200],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Sedang Berjalan",
                        style: TextStyle(
                          color: selectedTab == 0 ? Colors.white : Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() => selectedTab = 1),
                    child: Container(
                      height: 42,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: selectedTab == 1
                            ? const Color(0xFF168039)
                            : Colors.grey[200],
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Selesai",
                        style: TextStyle(
                          color: selectedTab == 1 ? Colors.white : Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  if (selectedTab == 0) buildCardSedangBerjalan(),
                  if (selectedTab == 0) buildCardSedangBerjalan2(),
                  if (selectedTab == 1) buildCardSelesai(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCardSedangBerjalan() {
    return Stack(
      children: [
        // CARD UTAMA
        Container(
          margin: const EdgeInsets.only(bottom: 20, top: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    const Text(
                      "Pengembangan Komoditi Pisang Cavendish\n(Musa acuminate/Cavendish)",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(height: 22),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Investasi",
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 13)),
                            SizedBox(height: 4),
                            Text("Rp 10.000.000",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                )),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text("Total Imbal",
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 13,
                                )),
                            SizedBox(height: 4),
                            Text(
                              "Rp 2.700.000",
                              style: TextStyle(
                                color: Color(0xFF168039),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 22),

                    const Text(
                      "Tahapan Investasi",
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 4),

                    const Text(
                      "Penanaman bibit oleh petani",
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),

                    const SizedBox(height: 26),

                    const Text(
                      "Program akan berakhir dalam 365 hari",
                      style: TextStyle(
                        color: Color(0xFFF2994A),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailInvestasiPage(),
                    ),
                  );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color(0xFF168039),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Lihat Progress",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        Positioned(
          left: 15,
          top: 15,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFFF4A259),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                bottomLeft: Radius.circular(12)
              )
            ),
            child: const Text(
              "Bagi Hasil 12 Bulan",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCardSedangBerjalan2() {
    return Stack(
      children: [
        // CARD UTAMA
        Container(
          margin: const EdgeInsets.only(bottom: 20, top: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    const Text(
                      "Pengembangan Komoditi Pisang Cavendish\n(Musa acuminate/Cavendish)",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(height: 22),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Periode Imbal",
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 13)),
                            SizedBox(height: 4),
                            Text("Per 12 Bulan",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                )),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text("Persentase Imbal",
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 13,
                                )),
                            SizedBox(height: 4),
                            Text(
                              "Rp 2.700.000",
                              style: TextStyle(
                                color: Color(0xFF168039),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 22),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Total Investasi",
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 13)),
                            SizedBox(height: 4),
                            Text("Rp 800 Juta",
                                style: TextStyle(
                                  color: Color(0xFFF2994A),
                                  fontSize: 16,
                                )),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text("Target Dana",
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 13,
                                )),
                            SizedBox(height: 4),
                            Text(
                              "Rp 1 Miliyar",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),

                    LinearProgressIndicator(
                      borderRadius: BorderRadius.circular(4),
                      backgroundColor: Colors.grey.shade300,
                      color: Colors.orange,
                      minHeight: 7,
                    ),

                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sisa 2 hari lagi",
                          style: TextStyle(
                            color: Color(0xFFF25656)
                          ),
                        ),
                        Text(
                          "200 Unit Tersisa",
                        )
                      ],
                    )
                  ],
                ),
              ),

              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color(0xFFEE684F),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Akan dimulai dalam 2 Hari",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        Positioned(
          left: 15,
          top: 15,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFFF4A259),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                bottomLeft: Radius.circular(12)
              )
            ),
            child: const Text(
              "Bagi Hasil 12 Bulan",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCardSelesai() {
    return Stack(
      children: [
        // CARD UTAMA
        Container(
          margin: const EdgeInsets.only(bottom: 20, top: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    const Text(
                      "Pengembangan Komoditi Pisang Cavendish\n(Musa acuminate/Cavendish)",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(height: 22),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Investasi",
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 13)),
                            SizedBox(height: 4),
                            Text("Rp 10.000.000",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                )),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text("Total Imbal",
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 13,
                                )),
                            SizedBox(height: 4),
                            Text(
                              "Rp 2.700.000",
                              style: TextStyle(
                                color: Color(0xFF168039),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 22),

                    const Text(
                      "Tahapan Investasi",
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 4),

                    const Text(
                      "Pengembalian dana invetasi + imbal.",
                      style: TextStyle(
                        color: Colors.black87,
                      ),
                    ),

                    const SizedBox(height: 26),

                    const Text(
                      "Program telah selesai",
                      style: TextStyle(
                        color: Color(0xFF168039),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailInvestasiPage(),
                    ),
                  );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color(0xFF168039),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Lihat Laporan Investasi",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        Positioned(
          left: 15,
          top: 15,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFFF4A259),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                bottomLeft: Radius.circular(12)
              )
            ),
            child: const Text(
              "Bagi Hasil 12 Bulan",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
