import 'package:flutter/material.dart';
import 'package:jurnalku_clone/catatan-sikap/catatan_sikap_page.dart';
import 'package:jurnalku_clone/dashboard_page.dart';
import 'package:jurnalku_clone/explore_page.dart';
import 'package:jurnalku_clone/jurnal-pembiasaan/jurnal_pembiasaan_page.dart';
import 'package:jurnalku_clone/login_page.dart';
import 'package:jurnalku_clone/panduan-pengguna/panduan_pengguna.dart';
import 'package:jurnalku_clone/pengaturan_akun_page.dart';
import 'package:jurnalku_clone/permintaan_saksi.dart';
import 'package:jurnalku_clone/progress/progress_belajar.dart';
import 'portofolio_component.dart';
import 'sertifikat_component.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
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

class _ProfilePageState extends State<ProfilePage> {
  int selectedTab = 0; // 0 = overview, 1 = portfolio, 2 = sertifikat

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF02398C),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.arrow_back, color: Colors.white, size: 18),
                      SizedBox(width: 6),
                      Text("Kembali", style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/wikrama-mewah.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: -45,
                  child: Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/profile-blank.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 70),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Farhan Syarif Hidayatulloh",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "12309639 | PPLG XII - 3 | Ciawi - 1",
                        style: TextStyle(color: Colors.black54, fontSize: 18),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF02398C),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.share, color: Colors.white),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                buildTab("Overview", 0),
                buildTab("Portofolio (5)", 1),
                buildTab("Sertifikat (5)", 2),
              ],
            ),

            const SizedBox(height: 20),

            // TAB CONTENT
            if (selectedTab == 0) buildOverviewComponent(),
            if (selectedTab == 1) const PortofolioComponent(),
            if (selectedTab == 2) const SertifikatComponent(),
          ],
        ),
      ),
    );
  }

  Expanded buildTab(String title, int index) {
    final active = selectedTab == index;
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => selectedTab = index),
        child: Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: active ? const Color(0xFF02398C) : Colors.black87,
                fontWeight: active ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            const SizedBox(height: 6),
            Container(
              height: 3,
              color: active ? const Color(0xFF02398C) : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOverviewComponent() {
    return Column(
      children: [
        buildPortfolioCard(),
        buildSertifikatCard(),
        buildDocumentCard(),
        buildKartuPelajarCard(),
        buildMediaSosialCard(),
      ],
    );
  }

  Widget buildPortfolioCard() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        color: Colors.white,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Portofolio terbaru",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),

                  Row(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.add, color: Colors.black, size: 12),
                          SizedBox(width: 5),
                          Text("Tambah", style: TextStyle(color: Colors.black)),
                        ],
                      ),

                      const SizedBox(width: 5),

                      const Text("|", style: TextStyle(color: Colors.black)),

                      const SizedBox(width: 5),

                      const Text(
                        "Lihat semua",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Image
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/al-ikram.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                "Masjid App (Al - Ikram)",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 5),
              const Text("Dibuat: 5 Juli 2025"),
              const SizedBox(height: 5),
              const Text("Lama pengerjaan: 1 Hari"),
              const SizedBox(height: 5),

              Row(
                children: const [
                  Icon(Icons.visibility, size: 20),
                  SizedBox(width: 6),
                  Text("Lihat project"),
                ],
              ),

              const SizedBox(height: 10),

              const Text(
                "Lihat detail",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSertifikatCard() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        color: Colors.white,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Sertifikat terbaru",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),

                  Row(
                    children: [
                      // Tombol Tambah
                      Row(
                        children: const [
                          Icon(Icons.add, color: Colors.black, size: 12),
                          SizedBox(width: 5),
                          Text("Tambah", style: TextStyle(color: Colors.black)),
                        ],
                      ),

                      const SizedBox(width: 5),
                      const Text("|", style: TextStyle(color: Colors.black)),
                      const SizedBox(width: 5),

                      const Text(
                        "Lihat semua",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/sertifikat.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                "Sertifikat Google Developer Group",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              const Text(
                "Lihat detail",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDocumentCard() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Document",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 25),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Curriculum Vitae",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Dokumen CV Kesiswaan",
                    style: TextStyle(color: Colors.black54),
                  ),

                  const SizedBox(height: 15),

                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Color(0xFF02398C),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.insert_drive_file,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Lihat CV",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(Icons.download, size: 22),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildKartuPelajarCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Kartu Pelajar",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Kartu identitas siswa",
                    style: TextStyle(color: Colors.black54),
                  ),
                  const SizedBox(height: 15),

                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Lihat Kartu Pelajar",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(Icons.download, size: 22),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 15),

                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Icon(
                          Icons.error,
                          color: Colors.yellow[700]!,
                          size: 16,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          "Kartu pelajar dapat dilihat oleh anda dan guru",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMediaSosialCard() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Media Sosial",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.edit, size: 16, color: Colors.black),
                    SizedBox(width: 6),
                    Text(
                      "Edit",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 25),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.link, size: 32),
                const SizedBox(width: 15),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "LinkedIn",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "https://linkedin.com/in/farhansyarifhidayatulloh32",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
