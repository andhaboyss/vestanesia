import 'package:flutter/material.dart';
import 'package:vestanesia/common/app_routes.dart';
import 'package:vestanesia/page/bantuan_page.dart';
import 'package:vestanesia/page/investasi_page.dart';
import 'package:vestanesia/page/kebjikaan_privasi_page.dart';
import 'package:vestanesia/page/syarat_dan_ketentuan_page.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),

        // 🔹 Bagian atas profil
        SizedBox(
          height: 90,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Foto profil dari assets
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
                child: SizedBox(
                  height: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
              ),

              // 🔹 Tombol "Lihat Profil"
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.profilPage);
                },
                style: TextButton.styleFrom(
                  minimumSize: const Size(1, 20),
                  foregroundColor: Colors.grey[700],
                  padding: const EdgeInsets.symmetric(
                      horizontal: 6, vertical: 4), // ukuran tombol kecil
                  side: const BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Lihat Profil",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        // 🔹 Statistik Program
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              _StatItem(title: "Aktif", value: "6 Program"),
              _StatItem(title: "Selesai", value: "1 Program"),
              _StatItem(title: "Total Investasi", value: "Rp 600.000.000"),
            ],
          ),
        ),

        const SizedBox(height: 20),
        const Divider(height: 10),

        // 🔹 Menu List
        _MenuItem(
          title: "Investasiku",
          onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => const InvestasikuPage(),
              ),
            );
          },
        ),
        const Divider(height: 10),
        _MenuItem(
          title: "Bantuan",
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => const BantuanPage(),
              ),
            );
          },
        ),
        const Divider(height: 10),
        _MenuItem(
          title: "Syarat & Ketentuan",
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => const SyaratDanKetentuanPage(),
              ),
            );
          },
        ),
        const Divider(height: 10),
        _MenuItem(
          title: "Kebijakan Privasi",
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => const KebijakanPrivasiPage(),
              ),
            );
          },
        ),
        const Divider(height: 10),
        _MenuItem(
          title: "Rating Playstore",
          onTap: () => debugPrint("Rating Playstore ditekan"),
        ),
        const Divider(height: 10),
      ],
    );
  }
}

// 🔹 Widget untuk item statistik
class _StatItem extends StatelessWidget {
  final String title;
  final String value;

  const _StatItem({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(color: Colors.black54, fontSize: 17)),
        const SizedBox(height: 4),
        Text(value,
            style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w600,
                fontSize: 16)),
      ],
    );
  }
}

// 🔹 Widget untuk item menu bawah
class _MenuItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _MenuItem({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(Icons.chevron_right, color: Colors.black38),
      onTap: onTap,
    );
  }
}
