import 'package:flutter/material.dart';

class ProjectWorkDetailPage extends StatefulWidget {
  const ProjectWorkDetailPage({super.key});

  @override
  State<ProjectWorkDetailPage> createState() => _ProjectWorkDetailPageState();
}

class _ProjectWorkDetailPageState extends State<ProjectWorkDetailPage> with SingleTickerProviderStateMixin{
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
        title: Text("Project Work"),
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
                  border: Border.all(
                    width: 0.5,
                    color: Colors.grey,
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Colors.grey.shade100,
                      Colors.grey.shade200
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    )
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
                            "Nama Project Work",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 5,),
                          
                        ],
                      ),
                    ),
                    //garis 
                    Divider(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                    
                    Card(
                      margin: EdgeInsets.all(12),
                      elevation: 2,
                      child:
                      Container(
                        child: Column(
                          children: [
                            tampilProjectWork("Kompetensi :", "Rekayasa Perangkat Lunak"),
                            tampilProjectWork("Guru Pembimbing/Penanggungjawab :", ""),
                            tampilProjectWork("Tanggal Mulai Project Mobile Apps :", "10-10-2025"),
                            tampilProjectWork("Tanggal Selesai Project Mobile Apps :", "20-10-2025"),
                            tampilProjectWork("Status :", "Selesai"),
                            tampilProjectWork("Catatan Guru :", ""),
                            tampilProjectWork("Catatan Siswa :", ""),
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

Widget tampilProjectWork(String projectWork, String value) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      children: [
        Text(projectWork),
        SizedBox(width: 5,),
        Text(value)
      ],
    ),
  );
}
