import 'package:flutter/material.dart';

class UkkDetailPage extends StatefulWidget {
  const UkkDetailPage({super.key});

  @override
  State<UkkDetailPage> createState() => _UkkDetailPageState();
}

class _UkkDetailPageState extends State<UkkDetailPage>
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
        title: Text("Detail Ujian Kompetensi Keahlian"),
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
                          "Detail UKK",
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
                          tampilDetailUKK(
                            "Kompetensi :",
                            "Rekayasa Perangkat Lunak",
                          ),
                          tampilDetailUKK(
                            "Guru Pembimbing/Penanggungjawab :",
                            " ",
                          ),
                          tampilDetailUKK(
                            "Tanggal Mulai Project Mobile Apps :",
                            "10-10-2025",
                          ),
                          tampilDetailUKK(
                            "Tanggal Selesai Project Mobile Apps :",
                            "20-10-2025",
                          ),
                          tampilDetailUKK("Status :", "Selesai"),
                          tampilDetailUKK("Catatan Guru :", ""),
                          tampilDetailUKK("Catatan Siswa :", ""),
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

Widget tampilDetailUKK(String projectWork, String value) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(projectWork), Text(value)],
    ),
  );
}
