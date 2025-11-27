import 'package:flutter/material.dart';
import 'package:vestanesia/page/main_frame_page.dart';

class ProfilContent extends StatefulWidget {
  const ProfilContent({super.key});

  @override
  State<ProfilContent> createState() => _ProfilContentState();
}

class _ProfilContentState extends State<ProfilContent> {
  // Controller
  final namaController = TextEditingController();
  final tempatController = TextEditingController();
  final tanggalController = TextEditingController();
  final ibuController = TextEditingController();
  final noHpController = TextEditingController();
  final alamatController = TextEditingController();

  String? jenisKelamin = "Pria";
  String? agama;
  String? pendidikan;
  String? statusKawin;
  String? provinsi;
  String? kabupaten;
  String? kecamatan;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage('assets/profile.png'),
                backgroundColor: Colors.transparent,
                child: Text(
                  'Ad',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(width: 12),

              // Nama dan saldo
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Alfian Dirham",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.account_balance_wallet_outlined,
                            size: 16, color: Colors.black54),
                        SizedBox(width: 4),
                        Text(
                          "Rp 1.000.000",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        
        SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Data Pribadi",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ),
              Text(
                "Langkah 1 / 2",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 16),

          _buildTextField("Nama Lengkap - Sesuai KTP",
              hint: "Nama Lengkap", controller: namaController),

          // Jenis Kelamin
          const Text("Jenis Kelamin",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500)),
          const SizedBox(height: 6),
          Row(
            children: [
              _radioOption("Pria"),
              const SizedBox(width: 16),
              _radioOption("Wanita"),
            ],
          ),
          const SizedBox(height: 14),

          // Tempat & Tanggal Lahir
          Row(
            children: [
              Expanded(
                child: _buildTextField("Tempat Lahir",
                    hint: "Tempat Lahir", controller: tempatController),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: GestureDetector(
                  onTap: _selectDate,
                  child: AbsorbPointer(
                    child: _buildTextField("Tanggal Lahir",
                        hint: "Tanggal Lahir",
                        controller: tanggalController),
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: [
              Expanded(
                  child: _buildTextField("Nama Ibu Kandung",
                      hint: "Nama Ibu Kandung", controller: ibuController)),
              const SizedBox(width: 12),
              Expanded(
                child: _buildDropdown(
                  label: "Agama",
                  hint: "Pilih Agama",
                  value: agama,
                  items: const [
                    "Islam",
                    "Kristen",
                    "Katolik",
                    "Hindu",
                    "Budha",
                    "Konghucu"
                  ],
                  onChanged: (v) => setState(() => agama = v),
                ),
              ),
            ],
          ),

          _buildDropdown(
            label: "Pendidikan Terakhir",
            hint: "Pilih Pendidikan",
            value: pendidikan,
            items: const [
              "SMA/SMK",
              "Diploma",
              "Sarjana S1",
              "Magister S2",
              "Doktor S3"
            ],
            onChanged: (v) => setState(() => pendidikan = v),
          ),

          _buildDropdown(
            label: "Status Perkawinan",
            hint: "Pilih Status",
            value: statusKawin,
            items: const ["Belum Kawin", "Sudah Kawin", "Cerai"],
            onChanged: (v) => setState(() => statusKawin = v),
          ),

          // No HP
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("No HP",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500)),
              const SizedBox(height: 6),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: noHpController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Masukkan Nomor HP",
                        hintStyle:
                            const TextStyle(color: Colors.black38, fontSize: 14),
                        filled: true,
                        fillColor: const Color(0xFFF3F3F3),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 14),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "Verifikasi",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  )
                ],
              ),
            ],
          ),

          const SizedBox(height: 24),

          const Text("Alamat Sesuai KTP",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87)),
          const SizedBox(height: 12),

          _buildDropdown(
            label: "Provinsi",
            hint: "Pilih Provinsi",
            value: provinsi,
            items: const [
              "Sulawesi Selatan",
              "Sulawesi Barat",
              "Sulawesi Tengah"
            ],
            onChanged: (v) => setState(() => provinsi = v),
          ),
          _buildDropdown(
            label: "Kabupaten/Kota",
            hint: "Pilih Kabupaten/Kota",
            value: kabupaten,
            items: const ["Gowa", "Makassar", "Bone", "Soppeng"],
            onChanged: (v) => setState(() => kabupaten = v),
          ),
          _buildDropdown(
            label: "Kecamatan",
            hint: "Pilih Kecamatan",
            value: kecamatan,
            items: const ["SombaOpu", "Pallangga", "Bontomarannu"],
            onChanged: (v) => setState(() => kecamatan = v),
          ),

          _buildTextField("Alamat Lengkap",
              hint: "Alamat Lengkap", controller: alamatController),

          const SizedBox(height: 16),

          const Text("Upload Berkas",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87)),
          const SizedBox(height: 12),

          _uploadBox(Icons.image_outlined, "ganti foto e-KTP"),
          const SizedBox(height: 10),
          _uploadBox(Icons.camera_alt_outlined,
              "ganti foto selfie dengan e-KTP"),

          const SizedBox(height: 24),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainFrame(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              child: const Text(
                "Simpan",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label,
      {required TextEditingController controller, String? hint}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: const TextStyle(
                  fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500)),
          const SizedBox(height: 6),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle:
                  const TextStyle(color: Colors.black38, fontSize: 14),
              filled: true,
              fillColor: const Color(0xFFF3F3F3),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
            ),
          ),
        ],
      ),
    );
  }

  Widget _radioOption(String value) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: jenisKelamin,
          onChanged: (val) => setState(() => jenisKelamin = val),
          activeColor: Colors.green,
        ),
        Text(value,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
      ],
    );
  }

  Widget _buildDropdown({
    required String label,
    required String hint,
    required String? value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: const TextStyle(
                  fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500)),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: const Color(0xFFF3F3F3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                value: value,
                hint: Text(
                  hint,
                  style:
                      const TextStyle(color: Colors.black38, fontSize: 14),
                ),
                items: items
                    .map((e) =>
                        DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: onChanged,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _uploadBox(IconData icon, String label) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE0E0E0)),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.grey.shade700),
            const SizedBox(width: 8),
            Text(label,
                style: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: 14)),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime(1993, 7, 6),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      const bulan = [
        "Januari",
        "Februari",
        "Maret",
        "April",
        "Mei",
        "Juni",
        "Juli",
        "Agustus",
        "September",
        "Oktober",
        "November",
        "Desember"
      ];
      setState(() {
        tanggalController.text =
            "${picked.day} ${bulan[picked.month - 1]} ${picked.year}";
      });
    }
  }
}
