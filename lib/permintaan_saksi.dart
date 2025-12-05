import 'package:flutter/material.dart';
import 'package:jurnalku_clone/explore_page.dart';

class PermintaanSaksi extends StatelessWidget {
  const PermintaanSaksi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "Permintaan Saksi",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "Kelola permintaan menjadi saksi dari siswa lain",
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
                    color: Colors.blue[100],
                  ),
                  child: Text(
                    "Wednesday, 19 November 2025",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue[800],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.shade300, width: 1.2),
                  ),
                  child: Column(
                    children: [
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
                                    "Saksi",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
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
                                data: ThemeData().copyWith(
                                  dividerColor: Colors.transparent,
                                ),
                                child: ExpansionTile(
                                  title: Text("Aqila Hanin Nailah"),
                                  childrenPadding: EdgeInsets.all(16),
                                  children: [
                                    tampilPermintaanSaksi("Tanggal", ""),
                                    tampilPermintaanSaksi(
                                      "Konfirmasi Status",
                                      "",
                                    ),
                                    tampilPermintaanSaksi("Deskripsi", ""),
                                    SizedBox(height: 10),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget tampilPermintaanSaksi(String projectWork, String value) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(projectWork), Text(value)],
    ),
  );
}
