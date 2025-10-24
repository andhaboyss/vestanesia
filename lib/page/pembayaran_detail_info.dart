import 'package:flutter/material.dart';

class PembayaranDetailInfo extends StatefulWidget {
  const PembayaranDetailInfo({super.key});

  @override
  State<PembayaranDetailInfo> createState() => _PembayaranDetailInfoState();
}

class _PembayaranDetailInfoState extends State<PembayaranDetailInfo> {
  String? metodePembayaran = "Transfer Bank";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Pembayaran",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Center(
              child: Text(
                "1/2",
                style: TextStyle(color: Colors.black54, fontSize: 14),
              ),
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "Program",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  Image(
                    image: AssetImage("assets/garis.png"),
                    width: 280,
                  )
                ],
              ),
              const SizedBox(height: 16),
              
              const Text(
                "Pengembangan Komoditi Pisang Cavendish\n(Musa acuminate/Cavendish)",
                style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.4),
              ),
              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Periode Imbal",
                      style: TextStyle(color: Colors.black54, fontSize: 14)),
                  Text("Presentase Imbal",
                      style: TextStyle(color: Colors.black54, fontSize: 14)),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Per 12 Bulan",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text(
                      "27%",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Min. Pendanaan",
                      style: TextStyle(color: Colors.black54, fontSize: 14)),
                  Text("Max. Pendanaan",
                      style: TextStyle(color: Colors.black54, fontSize: 14)),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Rp 100.000",
                      style: TextStyle(color: Colors.black, fontSize: 14)),
                  Text("Rp 100.000.000",
                      style: TextStyle(color: Colors.black, fontSize: 14)),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Sisa 2 Hari Lagi",
                    style: TextStyle(color: Colors.red, fontSize: 13),
                  ),
                  Text(
                    "200 Unit Tersisa",
                    style: TextStyle(color: Colors.black54, fontSize: 13),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Text(
                    "Sembunyikan ▲",
                    style: TextStyle(color: Colors.green, fontSize: 13),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              const SizedBox(height: 8),
              const Text(
                "Ringkasan Biaya",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Nilai Investasi",
                      style: TextStyle(color: Colors.black54, fontSize: 14)),
                  Text("Rp 100.000/Unit",
                      style: TextStyle(color: Colors.black, fontSize: 14)),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Jumlah Unit",
                      style: TextStyle(color: Colors.black54, fontSize: 14)),
                  Text("3 Unit",
                      style: TextStyle(color: Colors.black, fontSize: 14)),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Total",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                          fontSize: 14)),
                  Text("Rp 300.000",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                          fontSize: 14)),
                ],
              ),

              const SizedBox(height: 16),

              // ===== PILIH METODE PEMBAYARAN =====
              const SizedBox(height: 8),
              const Text(
                "Pilih Metode Pembayaran",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black),
              ),
              const SizedBox(height: 10),

              RadioListTile<String>(
                value: "Transfer Bank",
                groupValue: metodePembayaran,
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  "Transfer Bank",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                subtitle: const Text(
                  "BRI, BNI, BNI Syariah, Mandiri, Mandiri Syariah, BCA",
                  style: TextStyle(color: Colors.black54, fontSize: 13),
                ),
                onChanged: (value) {
                  setState(() => metodePembayaran = value);
                },
              ),

              RadioListTile<String>(
                value: "Dompet Virtual",
                groupValue: metodePembayaran,
                contentPadding: EdgeInsets.zero,
                title: const Text(
                  "Dompet Virtual",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                subtitle: const Text(
                  "DANA, OVO, LinkAja, GoPay",
                  style: TextStyle(color: Colors.black54, fontSize: 13),
                ),
                onChanged: (value) {
                  setState(() => metodePembayaran = value);
                },
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),

      // ===== BOTTOM BUTTON =====
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Colors.grey.shade300)),
          ),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    side: BorderSide(color: Colors.green.shade600, width: 1.2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.green,
                    size: 16,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 4,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Bayar Sekarang",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white),
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
