import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jurnalku_clone/login_page.dart';
import 'package:jurnalku_clone/panduan-pengguna/panduan_pengguna.dart';
import 'package:jurnalku_clone/pengaturan_akun_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  PopupMenuItem<int> _menuItem(IconData icon, String label, int value) {
  return PopupMenuItem<int>(
    value: value,
    child: Row(
      children: [
        Icon(icon, size: 20, color: Colors.blueGrey),
        const SizedBox(width: 14),
        Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.blueGrey),
        ),
      ],
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


      // ================= BODY ====================
      body: SingleChildScrollView(
        child: Column(
          children: [

            // ===================HEADER JURNALKU========================================
            Container(
              height: 220,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: SvgPicture.asset(
                      "assets/images/bgsecondary.svg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Selamat Datang di Jurnalku",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Solusi cerdas untuk memantau perkembangan\nkompetensi siswa secara efektif",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 20),

            // ======================CARD APA ITU JURNALKU=================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 230,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF3A7BFF),
                      Color.fromARGB(255, 16, 69, 167),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Apa itu Jurnalku?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa "
                      "dalam memantau dan mengelola kompetensi keahlian siswa "
                      "secara efektif, terstruktur, dan real-time.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            // === 3 CARD JURNALKU===
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: const [
                  FeatureCardV2(
                    icon: Icons.home_work,
                    title: "Dirancang Khusus",
                    subtitle:
                        "Memenuhi kebutuhan spesifik sekolah kami dengan fokus pada kemajuan siswa.",
                  ),
                  SizedBox(height: 25),
                  FeatureCardV2(
                    icon: Icons.school_outlined,
                    title: "Efektif",
                    subtitle:
                        "Memudahkan siswa dan guru melihat perkembangan secara real-time.",
                  ),
                  SizedBox(height: 25),
                  FeatureCardV2(
                    icon: Icons.integration_instructions_outlined,
                    title: "Terintegrasi",
                    subtitle:
                        "Pengajuan kompetensi siswa, validasi dan laporan perkembangan yang transparan.",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // ===MENU APLIKASI===
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    "Menu Aplikasi",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 18),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),

                    child: Column(
                      children: [
                        MenuRow(
                          icon: Icons.person_outline,
                          title: "Profil",
                          subtitle: "Lihat dan kelola profilmu di sini.",
                        ),
                        _divider(),
                        MenuRow(
                          icon: Icons.work_outline,
                          title: "Portofolio",
                          subtitle: "Lihat dan kelola portofolio kompetensimu.",
                        ),
                        _divider(),
                        MenuRow(
                          icon: Icons.workspace_premium_outlined,
                          title: "Sertifikat",
                          subtitle: "Lihat dan unduh sertifikat kompetensimu.",
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // ===MENU LAINNYA===
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        MenuRow(
                          icon: Icons.menu_book_outlined,
                          title: "Jurnal Pembiasaan",
                          subtitle: "Catat dan pantau kegiatan pembiasaan harianmu.",
                        ),
                        _divider(),
                        MenuRow(
                          icon: Icons.person_search_outlined,
                          title: "Permintaan Saksi",
                          subtitle: "Lihat teman yang mengajukan permintaan saksi.",
                        ),
                        _divider(),
                        MenuRow(
                          icon: Icons.bar_chart_outlined,
                          title: "Progress",
                          subtitle:
                              "Lihat kemajuan kompetensi dan pencapaian belajarmu.",
                        ),
                        _divider(),
                        MenuRow(
                          icon: Icons.warning_amber_outlined,
                          title: "Catatan Sikap",
                          subtitle:
                              "Lihat catatan sikap dan perilaku dari guru.",
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 35),

                  // ===STATISTIK KOMPETENSI===
                  const Text(
                    "Statistik Kompetensi",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 18),

                  Column(
                    children: const [
                      StatCard(
                        title: "Materi Diselesaikan",
                        value: "0",
                        status: "Selesai",
                        statusColor: Colors.green,
                        icon: Icons.check_circle_outline,
                        iconBg: Color(0xFFE9FFEC),
                      ),
                      SizedBox(height: 20),
                      StatCard(
                        title: "Pengajuan Pending",
                        value: "0",
                        status: "Pending",
                        statusColor: Colors.orange,
                        icon: Icons.access_time,
                        iconBg: Color(0xFFFFF2E3),
                      ),
                      SizedBox(height: 20),
                      StatCard(
                        title: "Materi Hari Ini",
                        value: "0",
                        status: "Hari Ini",
                        statusColor: Colors.blue,
                        icon: Icons.calendar_month_outlined,
                        iconBg: Color(0xFFE8F1FF),
                      ),
                      SizedBox(height: 20),
                      StatCard(
                        title: "Materi Revisi",
                        value: "0",
                        status: "Revisi",
                        statusColor: Colors.purple,
                        icon: Icons.sync,
                        iconBg: Color(0xFFF5E8FF),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),

                  // ===PROGRESS AKADEMIK===
                  const Text(
                    "Progress Akademik",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 18),

                  // ===CARD PROGRESS AKADEMIK===
                  Container(
                    height: 200,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _progressItem("Selesai", "0", Color(0xFF4C52FF)),
                        SizedBox(height: 12),
                        _progressItem("Pending", "0", Color(0xFF6C8BFF)),
                        SizedBox(height: 12),
                        _progressItem("Belum", "0", Color(0xFF8ED8E8)),
                        SizedBox(height: 12),
                        _progressItem("Hari Ini", "0", Color(0xFF1AAFD0)),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  // CARD MELIHAT PROGRESS
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Lihat Progress Kamu →",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            "Belum ada kompetensi / progress",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                            "Lihat semua Kompetensi →",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 50),
                ],
              ),
            ),

            // ===FOOTER===
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              color: Color(0xFFE8F1FF),
              child: Row(
                children: const [
                  Icon(
                    Icons.copyright,
                    size: 16,
                    color: Color(0xFF1F4ED8),
                  ),
                  SizedBox(width: 6),
                  Text(
                    "GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF1F4ED8),
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
}

      Widget _divider() {
        return Divider(
          height: 1,
          thickness: 1,
          color: Colors.grey.shade200,
        );
      }

/// FEATURE CARD — V2

class FeatureCardV2 extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const FeatureCardV2({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(
            icon,
            size: 54,
            color: const Color(0xFF1F4ED8),
          ),
          const SizedBox(height: 18),

          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 10),

          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 14,
              height: 1.4,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

/// MENU ROW

class MenuRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const MenuRow({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(13),
            decoration: BoxDecoration(
              color: Color(0xFFE8F0FF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, size: 28, color: const Color(0xFF1F4ED8)),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 13,
                    height: 1.3,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),

          const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.black45,
          ),
        ],
      ),
    );
  }
}

/// STATISTIK CARD

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final String status;
  final Color statusColor;
  final IconData icon;
  final Color iconBg;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
    required this.status,
    required this.statusColor,
    required this.icon,
    required this.iconBg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // LEFT TEXT
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 6),

                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: statusColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      status,
                      style: TextStyle(
                        fontSize: 13,
                        color: statusColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          // ICON
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: iconBg,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              size: 28,
              color: statusColor,
            ),
          )
        ],
      ),
    );
  }
}

/// PROGRESS ITEM

Widget _progressItem(String label, String value, Color dotColor) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: dotColor,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 10),
          Text(
            label,
            style:  TextStyle(
              fontSize: 15,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      Text(
        value,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}
