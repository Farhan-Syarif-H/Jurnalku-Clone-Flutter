import 'package:flutter/material.dart';
import 'package:jurnalku_clone/catatan-sikap/detail_catatan_sikap.dart';
import 'package:jurnalku_clone/dashboard_page.dart';
import 'package:jurnalku_clone/explore_page.dart';
import 'package:jurnalku_clone/jurnal-pembiasaan/jurnal_pembiasaan_page.dart';
import 'package:jurnalku_clone/login_page.dart';
import 'package:jurnalku_clone/panduan-pengguna/panduan_pengguna.dart';
import 'package:jurnalku_clone/pengaturan_akun_page.dart';
import 'package:jurnalku_clone/permintaan_saksi.dart';
import 'package:jurnalku_clone/profile/profile_page.dart';
import 'package:jurnalku_clone/progress/progress_belajar.dart';

class CatatanSikapPage extends StatefulWidget {
  const CatatanSikapPage({super.key});

  @override
  State<CatatanSikapPage> createState() => _CatatanSikapPageState();
}

class _CatatanSikapPageState extends State<CatatanSikapPage> {
  final List<Map<String, dynamic>> catatanData = [
    {
      "title": "Total Catatan",
      "quantity": 0,
      "icon": Icons.edit_document,
      "bgColor": Color(0xFFDBEAFE),
      "iconColor": Color(0xFF2563EB),
    },
    {
      "title": "Dalam Perbaikan",
      "quantity": 2,
      "icon": Icons.light,
      "bgColor": Color(0xFFFEF9C3),
      "iconColor": Color(0xFFCA8A04),
    },
    {
      "title": "Sudah Berubah",
      "quantity": 1,
      "icon": Icons.check,
      "bgColor": Color(0xFFDCFCE7),
      "iconColor": Color(0xFF16A34A),
    },
  ];

  // ================= MENU ITEM ====================
  PopupMenuItem<int> _menuItem(IconData icon, String label, int value) {
    return PopupMenuItem<int>(
      value: value,
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.blueGrey),
          const SizedBox(width: 14),
          Text(label, style: const TextStyle(fontSize: 15, color: Colors.blueGrey)),
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
              const Icon(Icons.home, color: Colors.black),

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

                  PopupMenuButton<int>(
                    offset: const Offset(0, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 6,
                    color: Colors.white,

                    onSelected: (value) {
                      switch (value) {
                        case 1:
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => DashboardPage()));
                          break;
                        case 2:
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => ProfilePage()));
                          break;
                        case 3:
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => ExplorePage()));
                          break;
                        case 4: // Jurnal Pembiasaan
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => JurnalPembiasaanPage()),
                          );
                          break;
                        case 5:
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => PermintaanSaksi()));
                          break;
                        case 6:
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => ProgressBelajar()));
                          break;
                        case 7:
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => CatatanSikapPage()));
                          break;
                        case 8:
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => PanduanPenggunaPage()));
                          break;
                        case 9:
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => PengaturanAkunPage()));
                          break;
                        case 10:
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
                                    Navigator.pop(context);
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => LoginPage()),
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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            const Text(
              "Catatan Sikap Saya",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            const Text(
              "Lihat catatan sikap dan perilaku yang telah dilaporkan",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 45),

            _warningBox(),
            const SizedBox(height: 20),

            _summaryCards(),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailCatatanSikapPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                "Detail Catatan Sikap",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // ================= WARNING BOX ====================
  Widget _warningBox() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFBEB),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 120,
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.alarm, color: Color(0xFFD97706), size: 25),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Perhatian",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF92400E),
                  ),
                ),
                SizedBox(height: 4),
                Flexible(
                  child: Text(
                    "Jika Anda merasa ada catatan yang tidak sesuai atau keliru, silakan hubungi guru jurusan untuk mengajukan klarifikasi.",
                    style: TextStyle(fontSize: 15, color: Color(0xFFB45309)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ================= SUMMARY CARDS ====================
  Widget _summaryCards() {
    return Column(
      children: List.generate(catatanData.length, (index) {
        final item = catatanData[index];

        return Container(
          margin: const EdgeInsets.only(bottom: 25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item["title"],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4B5563),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "${item["quantity"]}",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: item["bgColor"],
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  item["icon"],
                  color: item["iconColor"],
                  size: 28,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
