import 'package:flutter/material.dart';
import 'package:vestanesia/common/app_routes.dart';

class LengkapiData extends StatefulWidget {
  const LengkapiData({super.key});

  @override
  State<LengkapiData> createState() => _LengkapiDataState();
}

class _LengkapiDataState extends State<LengkapiData> {
  String? gender = 'Pria';
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _tanggalLahirController = TextEditingController();

  String? selectedAgama;
  String? selectedStatus;
  String? selectedProvinsi;
  String? selectedKota;
  String? selectedKecamatan;

  @override
  void dispose() {
    _tanggalLahirController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          title: const Text(
            'Lengkapi Data',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black87),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ===== Data Pribadi =====
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Data Pribadi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Langkah 1 / 2",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                buildTextField("Nama Lengkap - Sesuai KTP", "Masukkan Nama lengkap"),
                const SizedBox(height: 16),

                const Text("Jenis Kelamin", style: TextStyle(fontSize: 14)),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Radio<String>(
                      value: "Pria",
                      groupValue: gender,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setState(() => gender = value);
                      },
                    ),
                    const Text("Pria"),
                    const SizedBox(width: 20),
                    Radio<String>(
                      value: "Wanita",
                      groupValue: gender,
                      activeColor: Colors.green,
                      onChanged: (value) {
                        setState(() => gender = value);
                      },
                    ),
                    const Text("Wanita"),
                  ],
                ),
                const SizedBox(height: 16),

                Row(
                  children: [
                    Expanded(child: buildTextField("Tempat Lahir", "Tempat Lahir")),
                    const SizedBox(width: 10),
                    Expanded(child: buildDatePickerField("Tanggal Lahir")),
                  ],
                ),
                const SizedBox(height: 16),

                Row(
                  children: [
                    Expanded(child: buildTextField("Nama Ibu Kandung", "Nama Ibu Kandung")),
                    const SizedBox(width: 10),
                    Expanded(
                      child: buildDropdown(
                        "Agama",
                        ["Islam", "Kristen", "Hindu", "Budha"],
                        selectedAgama,
                        (val) => setState(() => selectedAgama = val),
                        hint: "Pilih Agama",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                buildTextField("Pendidikan Terakhir", "Masukkan Pendidikan Terakhir"),
                const SizedBox(height: 16),

                buildDropdown(
                  "Status Perkawinan",
                  ["Belum Menikah", "Menikah", "Cerai"],
                  selectedStatus,
                  (val) => setState(() => selectedStatus = val),
                  hint: "Pilih Status",
                ),
                const SizedBox(height: 16),

                const Text("No HP", style: TextStyle(fontSize: 14)),
                const SizedBox(height: 6),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Masukkan No HP",
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: const Color(0xFFF5F5F5),
                    suffixIcon: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Verifikasi",
                        style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nomor HP tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),

                const Text(
                  "Alamat Sesuai KTP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(height: 10),

                buildDropdown(
                  "Provinsi",
                  ["Sulawesi Barat", "Sulawesi Selatan"],
                  selectedProvinsi,
                  (val) => setState(() => selectedProvinsi = val),
                  hint: "Pilih Provinsi",
                ),
                const SizedBox(height: 16),

                buildDropdown(
                  "Kabupaten/Kota",
                  ["Mamuju", "Majene", "Polewali"],
                  selectedKota,
                  (val) => setState(() => selectedKota = val),
                  hint: "Pilih Kabupaten atau Kota",
                ),
                const SizedBox(height: 16),

                buildDropdown(
                  "Kecamatan",
                  ["Simboro", "Binanga", "Tappalang"],
                  selectedKecamatan,
                  (val) => setState(() => selectedKecamatan = val),
                  hint: "Pilih Kecamatan",
                ),
                const SizedBox(height: 16),

                buildTextField("Alamat Lengkap", "Masukkan Alamat Lengkap"),
                const SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, AppRoutes.lengkapiData2);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Harap isi semua form dengan benar"),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
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
        ),
      ),
    );
  }

  // ===== Widget Builder =====
  Widget buildTextField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 14)),
        const SizedBox(height: 6),
        TextFormField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.grey),
            filled: true,
            fillColor: const Color(0xFFF5F5F5),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Kolom ini tidak boleh kosong';
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget buildDropdown(
    String label,
    List<String> items,
    String? value,
    Function(String?) onChanged, {
    required String hint,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 14)),
        const SizedBox(height: 6),
        DropdownButtonFormField<String>(
          value: value,
          onChanged: onChanged,
          hint: Text(hint, style: const TextStyle(color: Colors.grey)),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFF5F5F5),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Silakan pilih $label';
            }
            return null;
          },
          items: items
              .map((item) => DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  ))
              .toList(),
        ),
      ],
    );
  }

  // ===== Date Picker dengan validasi maksimal hari ini =====
  Widget buildDatePickerField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 14)),
        const SizedBox(height: 6),
        TextFormField(
          controller: _tanggalLahirController,
          readOnly: true,
          onTap: () async {
            FocusScope.of(context).requestFocus(FocusNode());

            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime(2025),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
              builder: (context, child) {
                return Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: const ColorScheme.light(
                      primary: Colors.green,
                      onPrimary: Colors.white,
                      onSurface: Colors.black,
                    ),
                  ),
                  child: child!,
                );
              },
            );

            if (pickedDate != null) {
              setState(() { 
                _tanggalLahirController.text =
                    "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
              });
            }
          },
          decoration: InputDecoration(
            hintText: "Pilih Tanggal Lahir",
            hintStyle: const TextStyle(color: Colors.grey),
            filled: true,
            fillColor: const Color(0xFFF5F5F5),
            suffixIcon: const Icon(Icons.calendar_today, color: Colors.grey),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Silakan pilih tanggal lahir';
            }
            return null;
          },
        ),
      ],
    );
  }
}
