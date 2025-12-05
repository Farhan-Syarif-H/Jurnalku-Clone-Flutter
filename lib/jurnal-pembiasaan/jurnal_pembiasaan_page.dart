import 'package:flutter/material.dart';
import 'package:jurnalku_clone/catatan-sikap/catatan_sikap_page.dart';
import 'package:jurnalku_clone/dashboard_page.dart';
import 'package:jurnalku_clone/explore_page.dart';
import 'package:jurnalku_clone/jurnal-pembiasaan/materi_page.dart';
import 'package:jurnalku_clone/jurnal-pembiasaan/pekerjaan_page.dart';
import 'package:jurnalku_clone/login_page.dart';
import 'package:jurnalku_clone/panduan-pengguna/panduan_pengguna.dart';
import 'package:jurnalku_clone/pengaturan_akun_page.dart';
import 'package:jurnalku_clone/permintaan_saksi.dart';
import 'package:jurnalku_clone/profile/profile_page.dart';
import 'package:jurnalku_clone/progress/progress_belajar.dart';

class JurnalPembiasaanPage extends StatefulWidget {
  const JurnalPembiasaanPage({super.key});
  

  @override
  State<JurnalPembiasaanPage> createState() => _JurnalPembiasaanPageState();
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

class _JurnalPembiasaanPageState extends State<JurnalPembiasaanPage> {

  // ==== FUNGSI tampilData (BIAR GAK ERROR) ====
  Widget tampilData(String title, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
          Text(value),
        ],
      ),
    );
  }

  // ================ BUILD ================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// ================= APP BAR ====================
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(60),
        child: Container(
          padding:  EdgeInsets.symmetric(horizontal: 16),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Home icon
              Icon(Icons.home, color: Colors.black),

              // ================= NAMA USER + AVATAR ====================
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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

                  // ================= DROPDOWN PROFILE ====================
                  PopupMenuButton<int>(
                    offset: Offset(0, 50),
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
                              title:  Text("Log Out"),
                              content:  Text("Yakin mau keluar, mbut?"),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child:  Text("Batal"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context); // tutup dialog
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(builder: (_) => LoginPage()),
                                    );
                                  },
                                  child:  Text("Log Out"),
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

                      PopupMenuDivider(),

                      _menuItem(Icons.menu_book, "Jurnal Pembiasaan", 4),
                      _menuItem(Icons.people, "Permintaan Saksi", 5),
                      _menuItem(Icons.bar_chart, "Progress", 6),
                      _menuItem(Icons.report, "Catatan Sikap", 7),

                      PopupMenuDivider(),

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
        child: Padding(
          padding:  EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ================= TITLE =================
              Text(
                "Jurnal Pembiasaan",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 7),
              Text(
                "DESEMBER - 2025",
                style: TextStyle(fontSize: 17, color: Colors.grey[600]),
              ),
              SizedBox(height: 20),

              // ============== BULAN =============
              Container(
                padding:  EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(10),
                ),
                child:  Text(
                  "Bulan Sebelumnya",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),

              SizedBox(height: 30),

              // ================= A. Pembiasaan Harian =================
              Text(
                "A. Pembiasaan Harian",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 7),

              Row(
                children: [
                  Icon(Icons.circle, color: Colors.green, size: 15),
                  SizedBox(width: 5),
                  Text("Sudah Diisi"),

                  SizedBox(width: 15),

                  Icon(Icons.circle, color: Color(0xFFC4C4C4), size: 15),
                  SizedBox(width: 5),
                  Text("Belum Diisi"),

                  SizedBox(width: 10),

                  Icon(Icons.circle, color: Colors.red, size: 15),
                  SizedBox(width: 5),
                  Text("Tidak Diisi"),
                ],
              ),

              SizedBox(height: 30),

              // ============= GRID TANGGAL =============
              GridView.builder(
                shrinkWrap: true,
                physics:  NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1.5,
                ),
                itemCount: 23,
                itemBuilder: (context, index) {
                  final day = index + 1;
                  final isDisabled = day == 1 || day == 2;

                  return Container(
                    decoration: BoxDecoration(
                      color: isDisabled ? Colors.grey[300] : Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            day.toString().padLeft(2, '0'),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: isDisabled ? Colors.grey[500] : Colors.black87,
                            ),
                          ),
                        ),
                        if (isDisabled)
                          Positioned(
                            top: 4,
                            right: 4,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.red[400],
                                shape: BoxShape.circle,
                              ),
                              child:  Icon(Icons.close, color: Colors.white, size: 14),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),

              SizedBox(height: 30),

              // ================= B. Pekerjaan =====================
              Text(
                "B. Pekerjaan yang dilakukan",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),

              Container(
                padding:  EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    _buildPekerjaanCard(
                      "Project Flutter",
                      "10 Januari 2025",
                      "Farhan",
                      "Done",
                    ),

                    _buildPekerjaanCard(
                      "Pekerjaan Project Progress Belajar",
                      "10 Januari 2025",
                      "Aqila",
                      "Done",
                    ),

                    _buildPekerjaanCard(
                      "Pekerjaan Jurnal Pembiasaan",
                      "10 Januari 2025",
                      "Arizqy",
                      "Pending",
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),

              // ============ Tombol Tambah + Lainnya ============
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:  EdgeInsets.all(10),
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add, color: Colors.white, size: 15),
                        SizedBox(width: 5),
                        Text("Tambah Pekerjaan",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => PekerjaanPage()));
                    },
                    child: Row(
                      children: [
                        Text("Lainnya",style: TextStyle(color: Colors.blue.shade900),),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_forward, size: 15, color: Colors.blue.shade900),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              // ================= C. Materi =====================
              Text(
                "C. Materi yang dipelajari",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),

              Container(
                padding:  EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    _buildMateriCard("Materi Tentang Widget Flutter", "12 Januari 2025"),
                    _buildMateriCard("Materi Tentang Controller Laravel", "13 Januari 2025"),
                    _buildMateriCard("Materi Tentang Controller Laravel", "13 Januari 2025"),
                  ],
                ),
              ),

              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:  EdgeInsets.all(10),
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add, color: Colors.white, size: 15),
                        SizedBox(width: 5),
                        Text("Tambah Materi",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MateriPage()));
                    },
                    child: Row(
                      children: [
                        Text("Lainnya", style: TextStyle(color: Colors.blue.shade900)),
                        SizedBox(width: 5),
                        Icon(Icons.arrow_forward, size: 15, color: Colors.blue.shade900),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // =================== Status ====================
              Row(
                children: [
                  Icon(Icons.circle, color: Colors.green, size: 15),
                  SizedBox(width: 5),
                  Text("A : Approved"),

                  SizedBox(width: 15),

                  Icon(Icons.circle, color: Colors.yellow[700], size: 15),
                 SizedBox(width: 5),
                 Text("P : Pending"),

                 SizedBox(width: 10),

                 Icon(Icons.circle, color: Colors.red, size: 15),
                 SizedBox(width: 5),
                 Text("R : Revisi"),
                ],
              ),

             SizedBox(height: 30),

              // ================= D. POIN =====================
             Text(
                "D. Poin",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),

              _buildPoinCard("M1"),
              _buildPoinCard("M2"),
            ],
          ),
        ),
      ),
    );
  }

  // ==================== WIDGET HELPER =====================
  Widget _buildPoinCard(String title) {
    return Card(
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      elevation: 2,
      child: ExpansionTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        childrenPadding: EdgeInsets.all(16),
        children: [
          tampilData("Mengerjakan project/adanya update progress belajar", "0"),
          tampilData("Poin dari pertanyaan atau laporan pengetahuan materi", "0"),
          tampilData("Jumlah poin minggu ini", "0"),
          tampilData("Jumlah poin ceklist pembiasaan", "0"),
          tampilData("Jumlah keseluruhan poin", "0"),
        ],
      ),
    );
  }

  Widget _buildPekerjaanCard(String title, String tanggal, String saksi, String status) {
    return Card(
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      elevation: 2,
      child: ExpansionTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("Tanggal, $tanggal"),
        childrenPadding: EdgeInsets.all(16),
        children: [
          tampilData("Tanggal", tanggal),
          tampilData("Saksi", saksi),
          tampilData("Status", status),
        ],
      ),
    );
  }

  Widget _buildMateriCard(String title, String tanggal) {
    return Card(
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      elevation: 2,
      child: ExpansionTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("Klik untuk melihat detail"),
        childrenPadding: EdgeInsets.all(16),
        children: [
          tampilData("Tanggal", tanggal),
          tampilData("Status", "Pending"),
        ],
      ),
    );
  }
}
