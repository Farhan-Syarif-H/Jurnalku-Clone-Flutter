import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jurnalku_clone/catatan-sikap/catatan_sikap_page.dart';
import 'package:jurnalku_clone/dashboard_page.dart';
import 'package:jurnalku_clone/explore_page.dart';
import 'package:jurnalku_clone/jurnal-pembiasaan/jurnal_pembiasaan_page.dart';
import 'package:jurnalku_clone/login_page.dart';
import 'package:jurnalku_clone/panduan-pengguna/panduan_pengguna.dart';
import 'package:jurnalku_clone/pengaturan_akun_page.dart';
import 'package:jurnalku_clone/profile/profile_page.dart';
import 'package:jurnalku_clone/progress/progress_belajar.dart';

class PermintaanSaksi extends StatelessWidget {
  const PermintaanSaksi({super.key});

  PopupMenuItem<int> _menuItem(IconData icon, String label, int value) {
    return PopupMenuItem<int>(
      value: value,
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.blueGrey),
          const SizedBox(width: 14),
          Text(
            label,
            style: const TextStyle(fontSize: 15, color: Colors.blueGrey),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: Colors.white,

          /// The label of the menu item.
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.home, color: Colors.black),

              // ================= NAMA USER + AVATAR ====================
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "M. Arizqy Khylmi Alkazhia",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "PPLG XII-3",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),

// ================= DROPDOWN PROFILE ====================
            PopupMenuButton<int>(
              offset: const Offset(0, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 6,
              color: Colors.white,

              // ================== ON SELECTED ==================
              onSelected: (value) {
                switch (value) {
                  case 1: // Dashboard
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => DashboardPage()),
                    );
                    break;

                  case 2: // Profil
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ProfilePage()),
                    );
                    break;

                  case 3: // Jelajahi
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ExplorePage()),
                    );
                    break;

                  case 4: // Jurnal Pembiasaan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => JurnalPembiasaanPage()),
                    );
                    break;

                  case 5: // Permintaan Saksi
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PermintaanSaksi()),
                    );
                    break;

                  case 6: // Progress
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ProgressBelajar()),
                    );
                    break;

                  case 7: // Catatan Sikap
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => CatatanSikapPage()),
                    );
                    break;

                  case 8: // Panduan Pengguna
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PanduanPenggunaPage()),
                    );
                    break;

                  case 9: // Pengaturan Akun
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => PengaturanAkunPage()),
                    );
                    break;

                  case 10: // Log Out
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: const Text("Log Out"),
                        content: const Text("Yakin mau keluar, mbut?"),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Batal"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context); // tutup dialog
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (_) => LoginPage()),
                              );
                            },
                            child: const Text("Log Out"),
                          ),
                        ],
                      ),
                    );
                    break;
                }
              },
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/profile-blank.jpg',
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    itemBuilder: (context) => [
                      _menuItem(Icons.dashboard, "Dashboard", 1),
                      _menuItem(Icons.person, "Profil", 2),
                      _menuItem(Icons.explore, "Jelajahi", 3),
                      const PopupMenuDivider(),
                      _menuItem(Icons.menu_book, "Jurnal Pembiasaan", 4),
                      _menuItem(Icons.people, "Permintaan Saksi", 5),
                      _menuItem(Icons.bar_chart, "Progress", 6),
                      _menuItem(Icons.report, "Catatan Sikap", 7),
                      const PopupMenuDivider(),
                      _menuItem(Icons.help_outline, "Panduan Pengguna", 8),
                      _menuItem(Icons.settings, "Pengaturan Akun", 9),
                      _menuItem(Icons.logout, "Log Out", 10),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // ================ BODY ====================
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                "Permintaan Saksi",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 3),
              Text(
                "Kelola permintaan menjadi saksi dari siswa lain",
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 20),

              // Tanggal
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[100],
                ),
                child: Text(
                  "Wednesday, 19 November 2025",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue[800],
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // KOTAK LIST
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade300, width: 1.2),
                ),
                child: Column(
                  children: [
                    // Header Tabel
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                        border: Border(
                          bottom: BorderSide(color: Colors.grey.shade300, width: 1),
                        ),
                      ),
                      child: Row(
                        children: const [
                          Expanded(
                            child: Center(child: Text("PENGIRIM", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))),
                          ),
                          Expanded(
                            child: Center(child: Text("TANGGAL", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))),
                          ),
                          Expanded(
                            child: Center(child: Text("KONFIRMASI", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 45),

                    // Belum ada data
                    Column(
                      children: [
                        Icon(Icons.groups_outlined, size: 58, color: Colors.grey[400]),
                        const SizedBox(height: 16),
                        const Text(
                          "Belum ada permintaan",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "Belum ada yang mengirim permintaan saksi kepada Anda",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.grey[600], height: 1.4),
                          ),
                        ),
                        const SizedBox(height: 35),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
