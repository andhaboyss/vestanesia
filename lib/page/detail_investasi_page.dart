import 'package:flutter/material.dart';

class DetailInvestasiPage extends StatefulWidget {
  const DetailInvestasiPage({super.key});

  @override
  State<DetailInvestasiPage> createState() => _DetailInvestasiPageState();
}

class _DetailInvestasiPageState extends State<DetailInvestasiPage> {
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

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pengembangan Komoditi Pisang Cavendish\n (Musa acuminate/Cavendish)",
              style: TextStyle(
                fontSize: 14,
              ),
            ),

            SizedBox(height: 16),

            Column(
              children: [
                const Text(
                  "Lokasi",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF848484)
                  ),
                ),
              ],
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Jl. Macanda, Romangpolong, Kec. Somba Opu,\n Kabupaten Gowa, Sulawesi Selatan",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),

                Image.asset(
                  "assets/direction.png",
                  width: 24,
                ),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Periode Imbal",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF848484)
                  ),
                ),

                Text(
                  "Presentase Imbal",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF848484)
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Per 12 Bulan",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),

                Container(
                  height: 20,
                  width: 35,
                  padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                  decoration: BoxDecoration(
                    color: Color(0xFF168039),
                    borderRadius: BorderRadius.circular(3)
                    
                  ),
                  child: Text(
                    "27%",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                )
              ],
            ),

            SizedBox(height: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Jangka Waktu",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF848484)
                  ),
                ),

                Text(
                  "12 Bulan (October 2020 - October 2021)",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),

              ],
            ),

            SizedBox(height: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Perusahaan Rekanan",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF848484)
                  ),
                ),

                Text(
                  "Kelompok tani di kota Baubau",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),

              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Jumlah Unit",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF848484)
                  ),
                ),

                Text(
                  "Jumlah Petani",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF848484)
                  ),
                ),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "200 Unit",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),

                Text(
                    "10 Orang",
                    style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                
              ],
            ),

            SizedBox(height: 20),

            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Color(0xFF29A35C),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Bagian atas
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Investasiku",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF848484),
                              ),
                            ),

                            SizedBox(height: 5),

                            Text(
                              "Rp 10.000.000",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              "Total Imbal",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF848484),
                              ),
                            ),

                            SizedBox(height: 5),

                            Text(
                              "Rp 2.700.000",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF168039),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Garis pembatas
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Color(0xFF29A35C),
                  ),

                  // Bagian bawah
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Total Pengembalian Investasi",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF848484),
                          ),
                        ),

                        SizedBox(height: 10),

                        Text(
                          "Rp 12.700.000",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            const Text(
              "Progress",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),

            SizedBox(height: 20),

            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.circle, size: 12, color: Color(0xFF168039)),
                        Container(height: 35, width: 2, color: Colors.grey),
                      ],
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Text(
                        "Pengumpulan Dana",
                        style: TextStyle(
                          color: Color(0xFF168039),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.circle, size: 12, color: Color(0xFF168039)),
                        Container(height: 120, width: 2, color: Colors.grey),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Pembelian bibit pisang cavendish oleh tim vestanesia",
                            style: TextStyle(
                              color: Color(0xFF168039),
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 10),

                          Row(
                            children: [
                              Image.asset(
                                "assets/foto_pisang.jpg",
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 10),
                              Image.asset(
                                "foto_pisang1.jpg",
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                buildTimelineItem("Penanaman bibit oleh petani rekanan \n vestanesia"),
                buildTimelineItem("Progress pertumbuhan bulan ke 3"),
                buildTimelineItem("Progress pertumbuhan bulan ke 6"),
                buildTimelineItem("Progress pertumbuhan bulan ke 9"),
                buildTimelineItem("Progress pertumbuhan bulan ke 12"),
                buildTimelineItem("Panen dilakukan oleh petani rekanan \n Vestanesia"),
                buildTimelineItem("Pengambilan hasil panen oleh tim Vestanesia untuk dilakukan penjualan"),
                buildTimelineItem("Pembagian hasil imbal oleh tim Vestanesia"),
              ],
            ),

          ],
        ),
      ),
    ); 
  }

  Widget buildTimelineItem(String title) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        children: [
          Icon(Icons.circle_outlined, size: 12, color: Colors.grey),
          Container(height: 35, width: 2, color: Colors.grey),
        ],
      ),
      const SizedBox(width: 10),
      Expanded(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.black87,
          ),
        ),
      )
    ],
  );
}

}