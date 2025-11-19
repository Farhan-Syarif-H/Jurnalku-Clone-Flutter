import 'package:flutter/material.dart';
import 'package:jurnalku_clone/explore_page.dart';

class CatatanSikapPage extends StatelessWidget {
  CatatanSikapPage({super.key});

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

  final List<Map<String, dynamic>> tableData = [
    {
      "no": 1,
      "kategori": "Baik",
      "catatan": "Membantu teman yang kesulitan",
      "status": "Selesai",
      "lapor": "12 Jan 2025",
      "update": "15 Jan 2025",
    },
    {
      "no": 2,
      "kategori": "Peringatan",
      "catatan": "Terlambat masuk kelas",
      "status": "Diproses",
      "lapor": "20 Jan 2025",
      "update": "21 Jan 2025",
    },
    {
      "no": 3,
      "kategori": "Baik",
      "catatan": "Membersihkan kelas",
      "status": "Selesai",
      "lapor": "02 Feb 2025",
      "update": "04 Feb 2025",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(color: Color(0xFFE2E8F0), width: 2),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExplorePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  minimumSize: Size(40, 40),
                ),
                child: Icon(Icons.home, size: 25, color: Color(0xFF64748B)),
              ),

              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Farhan Syarif Hidayatulloh",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      Text(
                        "PPLG XII-3",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(
                      "assets/images/profile-blank.jpg",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Text(
              "Catatan Sikap Saya",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            Text(
              "Lihat catatan sikap dan prilaku yang telah dilaporkan",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 45),

            Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFFBEB),
                borderRadius: BorderRadius.circular(8),
              ),
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(15),
              child: Row(
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
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFFB45309),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Column(
              children: List.generate(catatanData.length, (index) {
                final item = catatanData[index];

                return Container(
                  margin: EdgeInsets.only(bottom: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item["title"],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4B5563),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "${item["quantity"]}",
                            style: TextStyle(
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
            ),

            SizedBox(height: 20),

            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columnSpacing: 30,
                  headingRowColor: MaterialStateProperty.all(Color(0xFFF3F4F6)),
                  border: TableBorder.all(color: Colors.grey.shade300),

                  columns: const [
                    DataColumn(label: Text("NO")),
                    DataColumn(label: Text("KATEGORI")),
                    DataColumn(label: Text("CATATAN")),
                    DataColumn(label: Text("STATUS")),
                    DataColumn(label: Text("DILAPORKAN")),
                    DataColumn(label: Text("UPDATE TERAKHIR")),
                    DataColumn(label: Text("AKSI")),
                  ],

                  rows: tableData.map((item) {
                    return DataRow(
                      cells: [
                        DataCell(Text("${item["no"]}")),
                        DataCell(Text(item["kategori"])),
                        DataCell(Text(item["catatan"])),
                        DataCell(Text(item["status"])),
                        DataCell(Text(item["lapor"])),
                        DataCell(Text(item["update"])),
                        DataCell(Icon(Icons.visibility, color: Colors.blue)),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),

            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
