import 'package:flutter/material.dart';

// 🔹 Fungsi untuk ambil icon dari assets
Widget _navIcon(String path) {
  return Image.asset(
    path,
    width: 24,
    height: 24,
    errorBuilder: (context, error, stackTrace) =>
        const Icon(Icons.image_not_supported, color: Colors.grey),
  );
}

// 🔹 Widget 1: Pembayaran Berhasil (ada titik hijau)
class PembayaranBerhasilWidget extends StatelessWidget {
  const PembayaranBerhasilWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ListItem(
      iconPath: 'assets/1.png',
      title: 'Pembayaran',
      subtitle: 'Pembayaran Berhasil',
      date: '10 Sep',
      showDot: true,
    );
  }
}

// 🔹 Widget 2: Program Baru (tanpa titik hijau)
class ProgramBaruWidget extends StatelessWidget {
  const ProgramBaruWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ListItem(
      iconPath: 'assets/2.png',
      title: 'Program Baru',
      subtitle: 'Budidaya Pisang Cavendish',
      date: '10 Sep',
      showDot: false,
    );
  }
}

// 🔹 Widget 3: Pembayaran Ulang (tanpa titik hijau)
class PembayaranUlangWidget extends StatelessWidget {
  const PembayaranUlangWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ListItem(
      iconPath: 'assets/3.png',
      title: 'Pembayaran',
      subtitle: 'Pembayaran Berhasil',
      date: '10 Sep',
      showDot: false,
    );
  }
}

// 🔹 Widget 4: Investasi (ada titik hijau)
class InvestasiWidget extends StatelessWidget {
  const InvestasiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ListItem(
      iconPath: 'assets/4.png',
      title: 'Investasi',
      subtitle: 'Penanaman Bibit Oleh Mitra Petani',
      date: '10 Sep',
      showDot: true,
    );
  }
}

class _ListItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final String subtitle;
  final String date;
  final bool showDot; 

  const _ListItem({
    required this.iconPath,
    required this.title,
    required this.subtitle,
    required this.date,
    this.showDot = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon kiri
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF4CAF50).withOpacity(0.1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: _navIcon(iconPath),
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    shadows: [
                      Shadow(
                        offset: Offset(0.5, 0.5),
                        blurRadius: 0.8,
                        color: Colors.black26,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                date,
                style: const TextStyle(fontSize: 13, color: Colors.black54),
              ),
              const SizedBox(height: 5),
              if (showDot)
                const Icon(Icons.circle, color: Colors.green, size: 10),
            ],
          ),
        ],
      ),
    );
  }
}
