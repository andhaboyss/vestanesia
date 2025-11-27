import 'package:flutter/material.dart';

class KebijakanPrivasiPage extends StatelessWidget {
  const KebijakanPrivasiPage({super.key});

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
        centerTitle: true,
        title: const Text(
          "Kebijakan Privasi",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ===== JUDUL SUB =====
            const Text(
              "Kebijakan Privasi Vestanesia",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 8),

            const Text(
              "Kebijakan Privasi ini mengatur cara management Vestanesia mengumpulkan, menggunakan, mengelola, dan mengungkapkan data/informasi yang dikumpulkan dari setiap anggota (masing-masing, \"Anggota\") dari situs web https://www.vestanesia.com (\"Situs\"). Kebijakan privasi ini berlaku untuk Situs dan semua Program Budidaya/Transaksi Penjualan Vestanesia.",
              style: TextStyle(height: 1.45, fontSize: 15),
            ),

            const SizedBox(height: 20),

            // ===== SUBJUDUL =====
            const Text(
              "Informasi Pribadi",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 8),

            const Text(
              "Vestanesia mengumpulkan informasi pribadi dari Anggota yang meliputi nama, alamat email, alamat surat, nomor telepon serta data lainnya yang ditentukan oleh aturan yang berlaku. Data tersebut akan diperoleh setelah Anggota mengunjungi situs Vestanesia, mendaftar di situs, memesan, mengisi formulir, dan sehubungan dengan kegiatan, layanan, fitur atau sumber daya yang tersedia di Situs Vestanesia.\n\n"
              "Anggota Vestanesia juga dapat mengunjungi Situs Vestanesia secara anonim untuk melihat Program Budidaya/Transaksi Penjualan yang ada di Vestanesia.\n\n"
              "Vestanesia hanya akan mengumpulkan informasi pribadi dari Anggota jika mereka secara sukarela menyerahkan informasi tersebut kepada Vestanesia.\n\n"
              "Anggota selalu dapat menolak untuk memberikan informasi pribadi, kecuali bahwa hal itu menjadi data wajib yang dipersyaratkan oleh aturan Perundang-undangan yang berlaku.",
              style: TextStyle(height: 1.45, fontSize: 15),
            ),

            const SizedBox(height: 20),

            // ===== SUBJUDUL =====
            const Text(
              "Informasi Non-Pribadi",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 8),

            const Text(
              "Vestanesia dapat mengumpulkan informasi non-pribadi tentang Anggota setiap kali mereka berinteraksi dengan Situs Vestanesia. Informasi identifikasi non-pribadi dapat mencakup nama browser, jenis komputer dan informasi teknis tentang Anggota yang terhubung ke Situs, seperti sistem operasi dan penyedia layanan Internet yang digunakan dan informasi serupa lainnya.",
              style: TextStyle(height: 1.45, fontSize: 15),
            ),

            const SizedBox(height: 20),

            // ===== SUBJUDUL =====
            const Text(
              "Cookie Browser Web",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 8),

            const Text(
              "Situs Vestanesia dapat menggunakan \"cookies\" untuk meningkatkan pengalaman Anggota Vestanesia. Anggota dapat memilih untuk mengatur browser web mereka untuk menolak cookie, atau untuk mengingatkan Anda ketika cookie dikirim. Jika mereka melakukannya, perhatikan bahwa beberapa bagian Situs mungkin tidak berfungsi dengan benar.",
              style: TextStyle(height: 1.45, fontSize: 15),
            ),

            const SizedBox(height: 20),

            // ===== SUBJUDUL =====
            const Text(
              "Bagaimana Kami Menggunakan Informasi Yang Dikumpulkan?",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 8),

            const _Bullet("Untuk menjalankan dan mengoperasikan Situs Vestanesia memerlukan informasi Anda untuk menampilkan konten di Situs dengan benar."),
            const _Bullet("Untuk meningkatkan layanan pelanggan. Informasi yang Anda berikan membantu kami menanggapi permintaan layanan pelanggan Anda dan kebutuhan dukungan lebih efisien."),
            const _Bullet("Untuk mempersonalisasi pengalaman Anggota. Vestanesia dapat menggunakan informasi secara agregat untuk memahami bagaimana Anggota kami sebagai grup menggunakan layanan dan sumber daya yang disediakan di Situs Vestanesia."),
            const _Bullet("Vestanesia dapat menggunakan umpan balik yang Anda berikan untuk meningkatkan Program Budidaya/Transaksi Penjualan Vestanesia."),
            const _Bullet("Untuk memproses pembayaran, Vestanesia dapat menggunakan informasi yang disediakan Anggota tentang diri mereka ketika melakukan pemesanan hanya untuk menyediakan layanan pada pesanan itu. Vestanesia tidak membagikan informasi ini dengan pihak luar kecuali sejauh yang diperlukan untuk menyediakan layanan."),
            const _Bullet("Untuk mengirim email berkala. Vestanesia dapat menggunakan alamat email untuk mengirim informasi kepada Anggota dan pembaruan terkait pesanan mereka. Ini juga dapat digunakan untuk menjawab pertanyaan atau permintaan lainnya."),

            const SizedBox(height: 20),

            // ===== SUBJUDUL =====
            const Text(
              "Bagaimana Vestanesia Melindungi Informasi Anggota?",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 8),

            const Text(
              "Vestanesia mengadopsi praktik pengumpulan, penyimpanan, dan pemrosesan data yang sesuai dengan langkah-langkah keamanan untuk melindungi terhadap akses, perubahan, pengungkapan, atau penghancuran informasi pribadi Anda, nama Anggota, kata sandi, informasi transaksi, dan data yang disimpan di Situs kami.",
              style: TextStyle(height: 1.45, fontSize: 15),
            ),

            const SizedBox(height: 20),

            const Text(
              "Membagikan Informasi Pribadi Anggota",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 8),

            const Text(
              "Vestanesia tidak menjual, memperdagangkan, atau menyewakan informasi pribadi Anggota kepada orang lain. Kami dapat membagikan informasi agregat generik yang tidak terkait dengan informasi pribadi Anggota.",
              style: TextStyle(height: 1.45, fontSize: 15),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}


/// Bullet list widget
class _Bullet extends StatelessWidget {
  final String text;
  const _Bullet(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("•  ", style: TextStyle(fontSize: 18)),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                height: 1.45,
                fontSize: 15,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
