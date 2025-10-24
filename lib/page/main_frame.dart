import 'package:flutter/material.dart';
import 'package:vestanesia/page/beranda_page.dart';
import 'package:vestanesia/page/lainnya_page.dart';
import 'package:vestanesia/page/notifikasi_page.dart';
import 'package:vestanesia/page/program_page.dart';

class MainFrame extends StatefulWidget {
  const MainFrame({super.key});

  @override
  State<MainFrame> createState() => _MainFrameState();
}

class _MainFrameState extends State<MainFrame> {
  int _selectedIndex = 0;

  // Halaman dinamis
  Widget _getSelectedPage() {
    switch (_selectedIndex) {
      case 0:
        return const BerandaPage();
      case 1:
        return const ProgramPage();
      case 2:
        return const NotifikasiPage();
      case 3:
        return const LainnyaPage();
      default:
        return const SizedBox();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _navIcon({
    required String inactivePath,
    required String activePath,
    required bool isActive,
  }) {
    return Image.asset(
      isActive ? activePath : inactivePath,
      width: 26,
      height: 26,
      color: isActive ? null : Colors.grey.shade400,
      errorBuilder: (context, error, stackTrace) =>
          const Icon(Icons.image_not_supported, color: Colors.grey),
    );
  }

  //Widget utama
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _getSelectedPage(),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x1A000000),
                offset: Offset(0, -2),
                blurRadius: 4,
              ),
            ],
          ),
          child: Row(
            children: [
              _buildNavItem(
                index: 0,
                label: 'Beranda',
                inactiveIcon: 'assets/beranda.png',
                activeIcon: 'assets/icon_beranda.png',
              ),
              _buildNavItem(
                index: 1,
                label: 'Program',
                inactiveIcon: 'assets/icon_program_putih.png',
                activeIcon: 'assets/icon_program.png',
              ),
              _buildNavItem(
                index: 2,
                label: 'Notifikasi',
                inactiveIcon: 'assets/notif_putih.png',
                activeIcon: 'assets/notif.png',
              ),
              _buildNavItem(
                index: 3,
                label: 'Lainnya',
                inactiveIcon: 'assets/lainnya_putih.png',
                activeIcon: 'assets/icon_lain.png',
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Navbar item
  Widget _buildNavItem({
    required int index,
    required String label,
    required String inactiveIcon,
    required String activeIcon,
  }) {
    final bool isActive = _selectedIndex == index;

    return Expanded(
      child: GestureDetector(
        onTap: () => _onItemTapped(index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _navIcon(
              inactivePath: inactiveIcon,
              activePath: activeIcon,
              isActive: isActive,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: isActive ? Colors.green.shade700 : Colors.grey.shade500,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
