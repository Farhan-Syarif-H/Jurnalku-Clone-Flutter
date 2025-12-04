import 'package:flutter/material.dart';
import 'package:jurnalku_clone/detail_pengguna/panduan_catatan_sikap_page.dart';
import 'package:jurnalku_clone/detail_pengguna/panduan_ganti_password_page.dart';
import 'package:jurnalku_clone/detail_pengguna/panduan_kelengkapan_profile_page.dart';
import 'package:jurnalku_clone/detail_pengguna/panduan_mengisi_jurnal_page.dart';
import 'package:jurnalku_clone/detail_pengguna/panduan_portfolio_page.dart';
import 'package:jurnalku_clone/detail_pengguna/panduan_sertifikat_page.dart';
import 'package:jurnalku_clone/detail_pengguna/panduan_unggah_profile_page.dart';

class PanduanPenggunaPage extends StatelessWidget {
  const PanduanPenggunaPage({super.key});

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
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
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

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.home, color: Colors.black),

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
                  SizedBox(width: 10),
                  ClipOval(
                    child: Image.asset(
                      'assets/images/profile-blank.jpg',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
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
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
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
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
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
                subtitle:
                    "Panduan untuk menambah, edit, dan hapus portfolio",
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
                subtitle:
                    "Panduan untuk menambah, edit, dan hapus sertifikat",
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
                subtitle:
                    "Panduan untuk melihat dan memahami catatan sikap",
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
