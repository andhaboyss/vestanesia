import 'package:flutter/material.dart';
import 'package:vestanesia/common/app_routes.dart';

class LengkapiData2 extends StatefulWidget {
  const LengkapiData2({super.key});

  @override
  State<LengkapiData2> createState() => _LengkapiData2State();
}

class _LengkapiData2State extends State<LengkapiData2> {
  bool isChecked = false;
  bool agreeTerms = false;

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Upload Berkas",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Langkah 2 / 2",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
            const SizedBox(height: 12,),

            const Text(
              'Foto KTP',
            ),
            const SizedBox(height: 8),
            _buildUploadField('foto e-KTP'),

            const SizedBox(height: 20),
            const Text(
              'Upload Foto Selfie Dengan KTP',
            ),
            const SizedBox(height: 8),
            _buildUploadField('foto selfi dengan e-KTP'),

            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Checkbox(
                  value: isChecked,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
                const Expanded(
                  child: Text(
                    'Saya Menyatakan Bahwa Data Yang Telah Tercantum Diatas Adalah Benar Dan Saya Telah Melakukan Pengecekan Serta Dalam Kondisi Keadaan Sadar.',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                setState(() {
                  agreeTerms = !agreeTerms;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(8),
                  color: agreeTerms ? Colors.green.shade50 : Colors.transparent,
                ),
                child: Row(
                  children: [
                    Icon(
                      agreeTerms
                          ? Icons.radio_button_checked
                          : Icons.radio_button_off,
                      color: Colors.green,
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Saya setuju dengan syarat dan ketentuan',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.formulirMitra);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Selesai',
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

  // Widget untuk form upload tampilan kosong
  Widget _buildUploadField(String label) {
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400, style: BorderStyle.solid, width: 1),
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.shade100,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.camera_alt_outlined, color: Colors.grey.shade600, size: 28),
            const SizedBox(height: 6),
            Text(
              label,
              style: TextStyle(color: Colors.grey.shade700, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
