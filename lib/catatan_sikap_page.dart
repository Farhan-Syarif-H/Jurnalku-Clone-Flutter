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
      "kategori": "Baik",
      "catatan": "Membantu teman yang kesulitan",
      "status": "Selesai",
      "dilaporkan": "12 Jan 2025",
      "update terakhir": "15 Jan 2025",
    },
    {
      "kategori": "Peringatan",
      "catatan": "Terlambat masuk kelas",
      "status": "Diproses",
      "dilaporkan": "20 Jan 2025",
      "update terakhir": "21 Jan 2025",
    },
    {
      "kategori": "Baik",
      "catatan": "Membersihkan kelas",
      "status": "Selesai",
      "dilaporkan": "02 Feb 2025",
      "update terakhir": "04 Feb 2025",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final List<String> columns = tableData.first.keys.toList();

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

            Column(
              children: columns.map((col) {
                List<String> columnValues = tableData
                    .map((row) => row[col].toString())
                    .toList();

                return _ColumnCard(title: col, data: columnValues);
              }).toList(),
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

class _ColumnCard extends StatefulWidget {
  final String title;
  final List<String> data;

  const _ColumnCard({required this.title, required this.data});

  @override
  State<_ColumnCard> createState() => _ColumnCardState();
}

class _ColumnCardState extends State<_ColumnCard> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFFFFFF),
      margin: const EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    expanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                  ),
                  onPressed: () {
                    setState(() => expanded = !expanded);
                  },
                ),
              ],
            ),

            if (expanded) const Divider(),

            if (expanded)
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.data.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      "${i + 1}. ${widget.data[i]}",
                      style: const TextStyle(fontSize: 15),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
