import 'package:flutter/material.dart';
import 'package:jurnalku_clone/explore_page.dart';
import 'package:jurnalku_clone/progress/gim_project_detail_page.dart';
import 'package:jurnalku_clone/progress/mobile_apps_detail_page.dart';
import 'package:jurnalku_clone/progress/project_work_detail_page.dart';
import 'package:jurnalku_clone/progress/ukk_detail_page.dart';

class ProgressBelajar extends StatefulWidget {
  const ProgressBelajar({super.key});

  @override
  State<ProgressBelajar> createState() => _ProgressBelajarState();
}

class _ProgressBelajarState extends State<ProgressBelajar> with SingleTickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }

  String? projectWork;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        titleSpacing: 0,
        leading: IconButton(
          icon: Icon(Icons.home, color: Colors.grey, size: 28),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ExplorePage()),
            );
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Aqila Hanin Nailah",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                Text(
                  "PPLG XII-3",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          //avatar
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[400],
              child: Icon(Icons.person, color: Colors.white, size: 35),
            ),
          ),
        ],
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
