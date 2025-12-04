import 'package:flutter/material.dart';
import 'package:jurnalku_clone/catatan-sikap/detail_catatan_sikap.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
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
                  minimumSize: const Size(40, 40),
                ),
                child: const Icon(
                  Icons.home,
                  size: 25,
                  color: Color(0xFF64748B),
                ),
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
                      const Text(
                        "PPLG XII-3",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  const CircleAvatar(
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailCatatanSikapPage(),
                  ),
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
                child: Icon(item["icon"], color: item["iconColor"], size: 28),
              ),
            ],
          ),
        );
      }),
    );
  }
}
