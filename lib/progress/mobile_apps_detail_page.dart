import 'package:flutter/material.dart';

class MobileAppsDetailPage extends StatefulWidget {
  const MobileAppsDetailPage({super.key});

  @override
  State<MobileAppsDetailPage> createState() => _MobileAppsDetailPageState();
}

class _MobileAppsDetailPageState extends State<MobileAppsDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Project Mobile Apps"),
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.5, color: Colors.grey),
                gradient: LinearGradient(
                  colors: [Colors.grey.shade100, Colors.grey.shade200],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
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
                          "Project Mobile Apps Detail",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Nama project",
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
                    margin: EdgeInsets.all(12),
                    elevation: 2,
                    child: Container(
                      child: Column(
                        children: [
                          tampilMobileApps(
                            "Kompetensi :",
                            "Rekayasa Perangkat Lunak",
                          ),
                          tampilMobileApps(
                            "Guru Pembimbing/Penanggungjawab :",
                            " ",
                          ),
                          tampilMobileApps(
                            "Tanggal Mulai Project Mobile Apps :",
                            "10-10-2025",
                          ),
                          tampilMobileApps(
                            "Tanggal Selesai Project Mobile Apps :",
                            "20-10-2025",
                          ),
                          tampilMobileApps("Status :", "Selesai"),
                          tampilMobileApps("Catatan Guru :", ""),
                          tampilMobileApps("Catatan Siswa :", ""),
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

Widget tampilMobileApps(String projectWork, String value) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(projectWork), Text(value)],
    ),
  );
}
