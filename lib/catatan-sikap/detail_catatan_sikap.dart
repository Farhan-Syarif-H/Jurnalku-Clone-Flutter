import 'package:flutter/material.dart';

class DetailCatatanSikapPage extends StatelessWidget {
  DetailCatatanSikapPage({super.key});

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
    final columns = tableData.first.keys.toList();

    return Scaffold(
      appBar: AppBar(title: const Text("Detail Catatan Sikap")),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: columns.map((col) {
            List<String> values = tableData
                .map((row) => row[col].toString())
                .toList();

            return _ColumnCard(title: col, data: values);
          }).toList(),
        ),
      ),
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
      elevation: 2,
      shadowColor: Colors.black12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(bottom: 20),
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
              Column(
                children: List.generate(widget.data.length, (i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${i + 1}.  ",
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),

                        Expanded(
                          child: Text(
                            widget.data[i],
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
          ],
        ),
      ),
    );
  }
}
