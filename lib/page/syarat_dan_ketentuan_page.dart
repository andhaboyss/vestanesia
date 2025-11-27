import 'package:flutter/material.dart';

class SyaratDanKetentuanPage extends StatelessWidget {
  const SyaratDanKetentuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Syarat & Ketentuan",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ==== BULLET LIST ====
            const _Bullet(
                "Vestanesia adalah sebuah perusahaan finansial berbasis digital yang fokus pada usaha pertanian, peternakan, perikanan dan industri olahannya. Investor dapat bermitra dengan para petani terbaik melalui penyertaan modal investasi pada Program Budidaya/Transaksi Penjualan Vestanesia dengan manfaat bagi hasil yang menguntungkan."),
            const _Bullet(
                "Investor harus membaca, menyetujui syarat dan ketentuan yang tercantum di Web Vestanesia melalui www.vestanesia.com."),
            const _Bullet(
                "Sebelum berinvestasi, Investor harus membaca dan mengerti setiap informasi yang tertuang dalam Proposal Analisis Kelayakan Usaha pada setiap Program Budidaya/Transaksi Penjualan Vestanesia."),
            const _Bullet(
                "Investor dan Vestanesia berdasarkan itikad baik serta saling mempercayai, telah saling sepakat dan setuju untuk saling mengikatkan diri dalam Kepesertaan Program Budidaya/Transaksi Penjualan Vestanesia."),
            const _Bullet(
                "Investor wajib menyerahkan semua dokumen termasuk setiap perubahannya dari waktu ke waktu yang disyaratkan oleh Vestanesia berdasarkan aturan OJK RI."),
            const _Bullet(
                "Vestanesia akan memberikan informasi penempatan dana kepada Investor berdasarkan Program Budidaya/Transaksi Penjualan Vestanesia yang telah dipilih oleh Investor."),
            const _Bullet(
                "Dana yang diinvestasikan oleh Investor adalah kekayaan dan dana yang berasal dari sumber-sumber yang dibenarkan berdasarkan ketentuan hukum yang berlaku, yakni: Upah kerja, Pendapatan bisnis, Hasil dari penjualan properti dan/atau aset, Warisan, Hadiah, dan sumber lainnya (dijelaskan)."),
            const _Bullet(
                "Dana yang diinvestasikan oleh Investor juga bukan dari kegiatan pencucian uang, perdagangan narkotik dan obat-obatan terlarang, dan hasil kejahatan lainnya."),
            const _Bullet(
                "Investor akan mengkonfirmasi setiap penyertaan dana di Program Budidaya/Transaksi Penjualan Vestanesia yang diselenggarakan oleh Vestanesia secara online melalui www.vestanesia.com."),
            const _Bullet(
                "Paling lambat 3 (tiga hari kerja) setelah Investor mengkonfirmasi penyertaan dana, Vestanesia akan menerbitkan sertifikat penyertaan investasi (selanjutnya disebut SERTIFIKAT PENYERTAAN INVESTASI)."),
            const _Bullet(
                "Investor tidak dapat membatalkan penyertaan dana di setiap Program Budidaya/Transaksi Penjualan Vestanesia sebelum program budidaya tersebut berjalan."),
            const _Bullet(
                "Dalam kondisi tertentu dengan alasan yang sifatnya mendesak, Investor dapat menarik dana investasi dari Vestanesia sebelum masa akhir periode Program Budidaya/Transaksi Penjualan Vestanesia dengan ketentuan dikenakan denda administratif 35% dari total dana investasi."),
            const _Bullet(
                "Bagi hasil untuk setiap Program Budidaya/Transaksi Penjualan Vestanesia diselenggarakan dengan pengembalian pokok pinjaman dan bagi hasil dengan besaran dan jadwal pengembalian sesuai dengan Proposal Analisis Kelayakan Usaha yang diterbitkan oleh Vestanesia di awal investasi. Mohon untuk membaca Proposal Analisis Kelayakan Usaha pada setiap Program Budidaya/Transaksi Penjualan Vestanesia untuk mengetahui informasi lebih terperinci."),
            const _Bullet(
                "Segala kewajiban perpajakan yang timbul akibat pemberlakuan ketentuan investasi ini, akan ditanggung oleh Investor dan Vestanesia sesuai dengan peraturan perundang-undangan yang berlaku."),
            const _Bullet(
                "Investor dan Vestanesia sepakat untuk menyelesaikan segala perselisihan yang timbul sehubungan dengan atau sebagai akibat dari penyertaan dana investasi ini secara musyawarah untuk mufakat."),
            const _Bullet(
                "Apabila perselisihan tersebut tidak dapat diselesaikan dengan musyawarah mufakat, maka para pihak sepakat untuk mengajukan perselisihan kepada Badan Arbitrase Nasional Indonesia (BANI) dengan tunduk pada peraturan arbitrase dari BANI."),
            const _Bullet(
                "Dalam keadaan darurat nasional, perang, peraturan larangan dari pemerintah atau penyebab lainnya diluar kendali Investor dan Vestanesia yang menghalangi untuk menjalankan ketentuan berinvestasi ini maka kedua belah pihak akan dibebaskan dari kewajiban masing-masing selama periode tersebut."),
            const _Bullet(
                "Hal-hal yang belum diatur dan perubahan-perubahan dari Ketentuan Investasi Vestanesia, akan diselesaikan melalui kesepakatan atau perundingan antara Investor dengan Vestanesia dan akan dituangkan dalam suatu Addendum Perjanjian yang ditandatangani oleh kedua belah pihak serta merupakan bagian yang tidak terpisahkan dari dan mempunyai kekuatan hukum yang sama dengan Ketentuan Investasi ini."),

            const SizedBox(height: 30),

            // ==== KANTOR ====
            const Text(
              "KANTOR",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 6),
            const Text(
              "Jl. Perintis Kemerdekaan 16 Ruko Griya Athira\n"
              "Permai Blok B6, Kota Makassar, Sulawesi Selatan,\n"
              "Kode Pos 9042",
              style: TextStyle(height: 1.4),
            ),

            const SizedBox(height: 25),

            // ==== KONTAK ====
            const Text(
              "KONTAK",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 6),
            const Text(
              "+6281 1422 0206\n+6281 1422 0207\nvestanesia@gmail.com",
              style: TextStyle(height: 1.4),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}


/// Widget untuk bullet text agar hasilnya rapi seperti gambar
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
