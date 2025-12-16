import 'package:flutter/material.dart';
import 'package:jurnalku_clone/catatan-sikap/catatan_sikap_page.dart';
import 'package:jurnalku_clone/dashboard_page.dart';
import 'package:jurnalku_clone/explore_page.dart';
import 'package:jurnalku_clone/jurnal-pembiasaan/jurnal_pembiasaan_page.dart';
import 'package:jurnalku_clone/login_page.dart';
import 'package:jurnalku_clone/panduan-pengguna/panduan_pengguna.dart';
import 'package:jurnalku_clone/pengaturan_akun_page.dart';
import 'package:jurnalku_clone/permintaan_saksi.dart';
import 'package:jurnalku_clone/profile/profile_page.dart';
import 'package:jurnalku_clone/progress/gim_project_detail_page.dart';
import 'package:jurnalku_clone/progress/mobile_apps_detail_page.dart';
import 'package:jurnalku_clone/progress/project_work_detail_page.dart';
import 'package:jurnalku_clone/progress/ukk_detail_page.dart';

class ProgressBelajar extends StatefulWidget {
  const ProgressBelajar({super.key});

  @override
  State<ProgressBelajar> createState() => _ProgressBelajarState();
}

class _ProgressBelajarState extends State<ProgressBelajar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  String? projectWork;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
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
            style: const TextStyle(fontSize: 15, color: Colors.blueGrey),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ================== APP BAR ===================
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


      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "Progress Belajar",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "Pantau perkembangan kompetensi dan materi pembelajaran Anda",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.shade50,
                  ),
                  child: Text(
                    "Thursday, 20 November 2025",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue.shade800,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            //card 1
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey, width: 0.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Bagian kiri
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Total Pengajuan",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "0",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.blue,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              "Semua status",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.blue.shade700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Icon di kanan
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.check_circle_outline,
                      size: 28,
                      color: Colors.blue.shade600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            //card 2
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey, width: 0.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Bagian kiri
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Halaman Ini",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "0",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.green,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              "Data ditampilkan",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.green[700],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Icon di kanan
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.date_range_rounded,
                      size: 28,
                      color: Colors.green[600],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            //card 3
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey, width: 0.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Bagian kiri
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Status Pending",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "0",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.deepOrangeAccent,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              "Perlu validasi",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrangeAccent[600],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Icon di kanan
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.watch_later_outlined,
                      size: 28,
                      color: Colors.deepOrangeAccent[700],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            // table Project Work
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.5, color: Colors.grey),
                color: Colors.grey.shade100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Project Work",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Kompetensi dan materi pembelajaran",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //garis
                  Divider(height: 1, color: Colors.grey[300]),

                  //1
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(12),
                    elevation: 2,
                    child: Theme(
                      data: ThemeData().copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text("Nama Project Work"),
                        subtitle: Text("Kompetensi 1"),
                        childrenPadding: EdgeInsets.all(16),
                        children: [
                          SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProjectWorkDetailPage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue.shade50,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                textStyle: TextStyle(fontSize: 16),
                              ),
                              child: Text(
                                "Detail Project Work",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //2
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(12),
                    elevation: 2,
                    child: Theme(
                      data: ThemeData().copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text("Nama Project Work"),
                        subtitle: Text("Kompetensi 1"),
                        childrenPadding: EdgeInsets.all(16),
                        children: [
                          SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProjectWorkDetailPage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue.shade50,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                textStyle: TextStyle(fontSize: 16),
                              ),
                              child: Text(
                                "Detail Project Work",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //3
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(12),
                    elevation: 2,
                    child: Theme(
                      data: ThemeData().copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text("Nama Project Work"),
                        subtitle: Text("Kompetensi 1"),
                        childrenPadding: EdgeInsets.all(16),
                        children: [
                          SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProjectWorkDetailPage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue.shade50,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                textStyle: TextStyle(fontSize: 16),
                              ),
                              child: Text(
                                "Detail Project Work",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //4
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(12),
                    elevation: 2,
                    child: Theme(
                      data: ThemeData().copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text("Nama Project Work"),
                        subtitle: Text("Kompetensi 1"),
                        childrenPadding: EdgeInsets.all(16),
                        children: [
                          SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProjectWorkDetailPage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue.shade50,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                textStyle: TextStyle(fontSize: 16),
                              ),
                              child: Text(
                                "Detail Project Work",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // table Mobile Apps
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.5, color: Colors.grey),
                color: Colors.grey.shade100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mobile Apps",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Kompetensi dan materi pembelajaran",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //garis
                  Divider(height: 1, color: Colors.grey[300]),

                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(12),
                    elevation: 2,
                    child: Theme(
                      data: ThemeData().copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text("Nama Mobile Apps"),
                        subtitle: Text("Kompetensi 1"),
                        childrenPadding: EdgeInsets.all(16),
                        children: [
                          SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MobileAppsDetailPage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue.shade50,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                textStyle: TextStyle(fontSize: 16),
                              ),
                              child: Text(
                                "Detail Mobile Apps",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Table UKK
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.5, color: Colors.grey),
                color: Colors.grey.shade100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "UKK (Uji Kompetensi Keahlian)",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Kompetensi dan materi pembelajaran",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //garis
                  Divider(height: 1, color: Colors.grey[300]),

                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(12),
                    elevation: 2,
                    child: Theme(
                      data: ThemeData().copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text("Nama Project UKK"),
                        subtitle: Text("Kompetensi"),
                        childrenPadding: EdgeInsets.all(16),
                        children: [
                          SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => UkkDetailPage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue.shade50,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                textStyle: TextStyle(fontSize: 16),
                              ),
                              child: Text(
                                "Detail UKK",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            //table Gim
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.5, color: Colors.grey),
                color: Colors.grey.shade100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "GIM",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Kompetensi dan materi pembelajaran",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //garis
                  Divider(height: 1, color: Colors.grey[300]),

                  //1
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(12),
                    elevation: 2,
                    child: Theme(
                      data: ThemeData().copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text("Nama Project GIM"),
                        subtitle: Text("Kompetensi 1"),
                        childrenPadding: EdgeInsets.all(16),
                        children: [
                          SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => GimProjectDetailPage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue.shade50,
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                textStyle: TextStyle(fontSize: 16),
                              ),
                              child: Text(
                                "Detail Project GIM",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
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

Widget tampilCard(String projectWork, String value) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(projectWork), Text(value)],
    ),
  );
}
