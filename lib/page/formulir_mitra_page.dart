import 'package:flutter/material.dart';
import 'package:vestanesia/page/main_frame_page.dart';
import 'package:vestanesia/widget/custom_text.dart';

class FormulirMitra extends StatefulWidget {
  const FormulirMitra({super.key});

  @override
  State<FormulirMitra> createState() => _FormulirMitraState();
}

class _FormulirMitraState extends State<FormulirMitra> {
  
  // Data Pribadi
  final TextEditingController namaController = TextEditingController();
  final TextEditingController noController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();

  // Kelompok Tani/Organisasi
  final TextEditingController kelompokController = TextEditingController();
  final TextEditingController jumlahController = TextEditingController();

  // Budidaya
  final TextEditingController namabudayController = TextEditingController();
  final TextEditingController alamatbudayaController = TextEditingController();
  final TextEditingController nominalController = TextEditingController();
  final TextEditingController lamaperiodeController = TextEditingController();
  final TextEditingController nominallController = TextEditingController();


  // Dropdown values
  String? pengalamanBudidaya;
  String? luasLahan;

  // Radio value
  String? statusKepemilikan = "Milik Sendiri";

  final List<String> pengalamanOptions = [
  ];

  final List<String> luasLahanOptions = [
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: const Text(
          "Formulir Mitra Petani",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Data Pribadi
            const Text(
              "Data Pribadi",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 14),
            CustomText(label: "Nama Lengkap - Sesuai KTP", hint: "Masukkan Nama lengkap", controller: namaController),
            CustomText(label: "No HP", hint: "Masukkan No HP", controller: noController, keyboardType: TextInputType.phone,),
            CustomText(label: "Alamat Lengkap", hint: "Masukkan Alamat Lengkap", controller: alamatController),

            const SizedBox(height: 17),

            // Kelompok Tani/Organisasi/Badan
            const Text(
              "Kelompok Tani/Organisasi/Badan",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 14),
            CustomText(label: "Nama Kelompok Tani/Organisasi/Badan", hint: "Masukkan Kelompok", controller: kelompokController, keyboardType: TextInputType.phone,),
            CustomText(label: "Jumlah Anggota", hint: "Masukkan Jumlah Anggota", controller: jumlahController),

            const SizedBox(height: 17),

            // Budidaya
            const Text(
              "Budidaya",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 14),
            CustomText(label: "Nama Budidaya", hint: "Masukkan Nama Budidaya", controller: namabudayController),
            CustomText(label: "Alamat Lokasi Budidaya", hint: "Masukkan Lokasi Budidaya", controller: alamatbudayaController),

            _buildDropdownField(
              label: "Lama Pengalaman Dalam Budidaya",
              hint: "Lama pengalaman budidaya",
              value: pengalamanBudidaya,
              items: pengalamanOptions,
              onChanged: (value) => setState(() => pengalamanBudidaya = value),
            ),
            _buildDropdownField(
              label: "Luas Lahan Budidaya",
              hint: "Luas lahan budidaya",
              value: luasLahan,
              items: luasLahanOptions,
              onChanged: (value) => setState(() => luasLahan = value),
            ),

            // 🔹 Tambahan: Radio Button (Status Kepemilikan Lahan Budidaya)
            const SizedBox(height: 4),
            const Text(
              "Status Kepemilikan Lahan Budidaya",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text(
                      "Milik Sendiri",
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    value: "Milik Sendiri",
                    groupValue: statusKepemilikan,
                    activeColor: Colors.green,
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    onChanged: (value) => setState(() => statusKepemilikan = value),
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text(
                      "Sewa Lahan",
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    value: "Sewa Lahan",
                    groupValue: statusKepemilikan,
                    activeColor: Colors.green,
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    onChanged: (value) => setState(() => statusKepemilikan = value),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            CustomText(label: "Nominal Kebutuhan Anggaran Budidaya", hint: "Masukkan Kebutuhan Anggaran Budidaya", controller: nominalController),
            CustomText(label: "Lama Periode Budidaya", hint: "Lama Periode Budidaya", controller: lamaperiodeController),
            CustomText(label: "Nominal Kebutuhan Anggaran Budidaya", hint: "Masukkan Kebutuhan Anggaran Budidaya", controller: nominallController),

            const SizedBox(height: 14),
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
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      "Selanjutnya",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }


  // Reusable Dropdown
  Widget _buildDropdownField({
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
              style: const TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500)),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            decoration: BoxDecoration(
              color: const Color(0xFFF3F3F3),
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: value,
                hint: Text(hint, style: const TextStyle(color: Colors.black38, fontSize: 14)),
                isExpanded: true,
                icon: const Icon(Icons.arrow_drop_down, color: Colors.grey),
                items: items.map((item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item, style: const TextStyle(fontSize: 14)),
                  );
                }).toList(),
                onChanged: onChanged,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
