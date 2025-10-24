import 'package:flutter/material.dart';
import 'package:vestanesia/widget/detail_program_content.dart';

class CardIsi extends StatefulWidget {
  final double? cardWidth;

  const CardIsi({super.key, this.cardWidth});

  @override
  State<CardIsi> createState() => _CardIsiState();
}

class _CardIsiState extends State<CardIsi> {
  String selectedTab = "Semua";

  final List<Map<String, dynamic>> programs = [
    {
      "status": "Tersedia",
      "title":
          "Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)",
      "periode": "Per 12 Bulan",
      "imbal": "27%",
      "total": "Rp 800 Juta",
      "target": "Rp 1 Milyar",
      "sisa": "Sisa 2 Hari Lagi",
      "unit": "200 Unit Tersisa",
      "button": "Mulai Investasi",
      "color": Colors.green,
      "progress": 0.8,
      "badge": "Bagi Hasil 12 Bulan",
      "badgeColor": Colors.orange,
      "image": "assets/foto_pisang.jpg",
    },
    {
      "status": "Tersedia",
      "title":
          "Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)",
      "periode": "Per 12 Bulan",
      "imbal": "27%",
      "total": "Rp -",
      "target": "Rp 1 Milyar",
      "sisa": "Dibuka Dalam 2 Hari",
      "unit": "",
      "button": "Segera dimulai",
      "color": Colors.grey,
      "progress": 0.1,
      "badge": "Bagi Hasil 12 Bulan",
      "badgeColor": Colors.orange,
      "image": "assets/foto_pisang.jpg",
    },
    {
      "status": "Selesai",
      "title":
          "Pengembangan Komoditi Pisang Cavendish (Musa acuminate/Cavendish)",
      "periode": "Per 12 Bulan",
      "imbal": "27%",
      "total": "Rp 1 Milyar",
      "target": "Rp 1 Milyar",
      "sisa": "",
      "unit": "",
      "button": "Selesai",
      "color": Colors.grey,
      "progress": 1.0,
      "badge": "Bagi Hasil 12 Bulan",
      "badgeColor": Colors.orange,
      "image": "assets/foto_pisang.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredPrograms = selectedTab == "Semua"
        ? programs
        : programs.where((p) => p["status"] == selectedTab).toList();

    return Column(
      children: [
        _buildTabs(),
        const SizedBox(height: 20),
        ...filteredPrograms.map((p) => _buildCard(p)).toList(),
        const SizedBox(height: 10),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.green),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          child: const Text(
            "Tampilkan Lebih Banyak",
            style: TextStyle(color: Colors.green),
          ),
        ),
      ],
    );
  }

  Widget _buildTabs() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            _tabButton("Semua"),
            _tabButton("Tersedia"),
            _tabButton("Selesai"),
          ],
        ),
      ),
    );
  }

  Widget _tabButton(String label) {
    final bool active = selectedTab == label;
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => selectedTab = label),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: active ? Colors.green : Colors.white,
            borderRadius: BorderRadius.horizontal(
              left: label == "Semua" ? const Radius.circular(8) : Radius.zero,
              right: label == "Selesai" ? const Radius.circular(8) : Radius.zero,
            ),
            border: Border(
              right: label != "Selesai"
                  ? BorderSide(color: Colors.grey.shade300)
                  : BorderSide.none,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              color: active ? Colors.white : Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard(Map<String, dynamic> data) {
    return Container(
      width: widget.cardWidth ?? 330,
      margin: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.10),
            blurRadius: 40,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  child: Image.asset(
                    data["image"],
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 16,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: data["badgeColor"],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(4),
                    ),
                  ),
                  child: Text(
                    data["badge"],
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data["title"],
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 14),
                ),
                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Periode Imbal",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                    Text("Presentase Imbal",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                  ],
                ),
                const SizedBox(height: 4),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(data["periode"], style: const TextStyle(fontSize: 13)),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        data["imbal"],
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 22),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Total Investasi",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                    Text("Target Dana",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                  ],
                ),
                const SizedBox(height: 4),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data["total"],
                      style: TextStyle(
                        fontSize: 13,
                        color: (data["total"] == "Rp 800 Juta" ||
                                data["total"] == "Rp -")
                            ? Colors.orange
                            : Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(data["target"], style: const TextStyle(fontSize: 13)),
                  ],
                ),

                if (data["status"] != "Selesai") ...[
                  const SizedBox(height: 10),
                  LinearProgressIndicator(
                    borderRadius: BorderRadius.circular(4),
                    value: data["progress"],
                    backgroundColor: Colors.grey.shade300,
                    color: Colors.orange,
                    minHeight: 7,
                  ),
                  const SizedBox(height: 8),
                ],

                if (data["sisa"].toString().isNotEmpty)
                  Builder(
                    builder: (context) {
                      if (data["sisa"] == "Dibuka Dalam 2 Hari") {
                        return Center(
                          child: Text(
                            data["sisa"],
                            style: const TextStyle(
                              color: Colors.green,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        );
                      }

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            data["sisa"],
                            style: TextStyle(
                              color: data["status"] == "Selesai"
                                  ? Colors.grey
                                  : Colors.red,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          if (data["unit"].toString().isNotEmpty)
                            Text(
                              data["unit"],
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                        ],
                      );
                    },
                  ),
              ],
            ),
          ),

          // 🔹 Tombol bawah
          GestureDetector(
            onTap: () {
              if (data["button"] == "Mulai Investasi") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailProgramContent(),
                  ),
                );
              }
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: data["color"],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12),
              alignment: Alignment.center,
              child: Text(
                data["button"],
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
