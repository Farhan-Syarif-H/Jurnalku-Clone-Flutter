import 'package:flutter/material.dart';
import 'package:jurnalku_clone/explore_page.dart';
import 'package:jurnalku_clone/models/witness_request_model.dart';
import 'package:jurnalku_clone/services/witness_request_service.dart';

class PermintaanSaksi extends StatefulWidget {
  const PermintaanSaksi({super.key});

  @override
  State<PermintaanSaksi> createState() => _PermintaanSaksiState();
}

class _PermintaanSaksiState extends State<PermintaanSaksi> {
  List<WitnessRequest> requests = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchRequests();
  }

  Future<void> fetchRequests() async {
    try {
      final result = await WitnessRequestService.fetchRequests();
      setState(() {
        requests = result;
        isLoading = false;
      });
    } catch (e) {
      setState(() => isLoading = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(Icons.home, color: Colors.grey, size: 28),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ExplorePage()),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
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
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white, size: 35),
            ),
          ),
        ],
      ),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                const Text(
                  "Permintaan Saksi",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 3),
                Text(
                  "Kelola permintaan menjadi saksi dari siswa lain",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 20),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
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

                const SizedBox(height: 25),

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
                            const Padding(
                              padding: EdgeInsets.all(20),
                              child: Text(
                                "Saksi",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Divider(height: 1, color: Colors.grey[300]),

                            /// ===== ISI DARI API =====
                            isLoading
                                ? const Padding(
                                    padding: EdgeInsets.all(30),
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  )
                                : Column(
                                    children: requests.map((r) {
                                      return Card(
                                        color: Colors.white,
                                        margin: const EdgeInsets.all(12),
                                        elevation: 2,
                                        child: ExpansionTile(
                                          title: Text(r.user.name),
                                          subtitle: Text("NIS: ${r.user.nis}"),
                                          childrenPadding: const EdgeInsets.all(
                                            16,
                                          ),
                                          children: [
                                            tampilPermintaanSaksi(
                                              "Tanggal",
                                              r.requestDate,
                                            ),
                                            tampilPermintaanSaksi(
                                              "Status",
                                              r.status,
                                            ),
                                            tampilPermintaanSaksi(
                                              "Deskripsi",
                                              r.description,
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList(),
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

/// ===== WIDGET BARIS DETAIL =====
Widget tampilPermintaanSaksi(String label, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
        Expanded(child: Text(value, textAlign: TextAlign.end)),
      ],
    ),
  );
}
