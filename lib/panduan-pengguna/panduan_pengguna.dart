import 'package:flutter/material.dart';
import 'package:jurnalku_clone/dashboard_page.dart';
import 'package:jurnalku_clone/login_page.dart';
import 'package:jurnalku_clone/panduan-pengguna/detail_pengguna/panduan_catatan_sikap_page.dart';
import 'package:jurnalku_clone/panduan-pengguna/detail_pengguna/panduan_ganti_password_page.dart';
import 'package:jurnalku_clone/panduan-pengguna/detail_pengguna/panduan_kelengkapan_profile_page.dart';
import 'package:jurnalku_clone/panduan-pengguna/detail_pengguna/panduan_mengisi_jurnal_page.dart';
import 'package:jurnalku_clone/panduan-pengguna/detail_pengguna/panduan_portfolio_page.dart';
import 'package:jurnalku_clone/panduan-pengguna/detail_pengguna/panduan_sertifikat_page.dart';
import 'package:jurnalku_clone/panduan-pengguna/detail_pengguna/panduan_unggah_profile_page.dart';
import 'package:jurnalku_clone/pengaturan_akun_page.dart';

class PanduanPenggunaPage extends StatelessWidget {
  const PanduanPenggunaPage({super.key});
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

  Widget buildCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: Colors.blue[900], size: 30),
            ),
            SizedBox(width: 15),

            /// FIX OVERFLOW DI SINI → Expanded
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // ================= APP BAR ====================
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Home icon
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

                        // case 2: // Profil
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (_) => ProfilPage()),
                        //   );
                        //   break;

                        // case 3: // Jelajahi
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (_) => JelajahiPage()),
                        //   );
                        //   break;

                        // case 4: // Jurnal Pembiasaan
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (_) => JurnalPembiasaanPage()),
                        //   );
                        //   break;

                        // case 5: // Permintaan Saksi
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (_) => PermintaanSaksiPage()),
                        //   );
                        //   break;

                        // case 6: // Progress
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (_) => ProgressPage()),
                        //   );
                        //   break;

                        // case 7: // Catatan Sikap
                        //   Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (_) => CatatanSikapPage()),
                        //   );
                        //   break;

                        case 8: // Panduan Pengguna
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PanduanPenggunaPage(),
                            ),
                          );
                          break;

                        case 9: // Pengaturan Akun
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PengaturanAkunPage(),
                            ),
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
                                      MaterialPageRoute(
                                        builder: (_) => LoginPage(),
                                      ),
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

                    // ================== AVATAR BUTTON ==================
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/profile-blank.jpg',
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),

                    // ================== MENU ITEM ==================
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

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.book, color: Colors.blue[900], size: 30),
                  SizedBox(width: 10),
                  Text(
                    'Panduan Penggunaan',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Text(
                "Selamat datang di panduan penggunaan aplikasi Jurnalku. Panduan ini akan membantu Anda memahami cara menggunakan fitur-fitur yang tersedia dengan optimal.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20),

              // ================================= UMUM =================================
              Text(
                "Umum",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),

              buildCard(
                icon: Icons.upload_file,
                title: "Unggah Profile",
                subtitle: "Panduan untuk mengunggah profile pengguna",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PanduanUnggahProfilePage(),
                    ),
                  );
                },
              ),

              buildCard(
                icon: Icons.lock,
                title: "Ganti Password",
                subtitle: "Panduan untuk mengganti password pengguna",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PanduanGantiPasswordPage(),
                    ),
                  );
                },
              ),

              // ============================= UNTUK SISWA ==============================
              Text(
                "Untuk Siswa",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),

              buildCard(
                icon: Icons.book_online,
                title: "Mengisi Jurnal",
                subtitle: "Panduan untuk mengisi kegiatan sehari - hari",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PanduanMengisiJurnalPage(),
                    ),
                  );
                },
              ),

              buildCard(
                icon: Icons.person,
                title: "Kelengkapan Profile",
                subtitle: "Panduan untuk melengkapi profile",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PanduanKelengkapanProfilePage(),
                    ),
                  );
                },
              ),

              buildCard(
                icon: Icons.folder_copy,
                title: "Mengelola Portfolio",
                subtitle: "Panduan untuk menambah, edit, dan hapus portfolio",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PanduanPortfolioPage(),
                    ),
                  );
                },
              ),

              buildCard(
                icon: Icons.verified,
                title: "Mengelola Sertifikat",
                subtitle: "Panduan untuk menambah, edit, dan hapus sertifikat",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PanduanSertifikatPage(),
                    ),
                  );
                },
              ),

              buildCard(
                icon: Icons.info_outline,
                title: "Catatan Sikap Saya",
                subtitle: "Panduan untuk melihat dan memahami catatan sikap",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PanduanCatatanSikapPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
