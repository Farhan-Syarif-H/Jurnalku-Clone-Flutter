import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jurnalku_clone/login_page.dart';
import 'package:jurnalku_clone/models/student_model.dart';
import 'package:jurnalku_clone/services/student_service.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  TextEditingController searchController = TextEditingController();

  List<Student> allStudents = [];
  List<Student> students = [];
  bool isLoading = true;

  // DATA
  final List<String> rombelList = [
    "RPL X-1",
    "RPL X-2",
    "RPL XI-1",
    "RPL XII-2",
  ];
  final List<String> rayonList = ["Cicurug", "Ciawi", "Tajur", "Sukasari"];
  final List<String> jurusanList = ["RPL", "DKV", "Perhotelan", "Kuliner"];

  // STATE
  bool showFilter = false;
  String? selectedRombel;
  String? selectedRayon;
  String? selectedJurusan;

  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      final result = await StudentService.fetchStudents();
      setState(() {
        allStudents = result;
        students = result;
        isLoading = false;
      });
    } catch (e) {
      setState(() => isLoading = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }

  void searchStudent(String keyword) {
    final query = keyword.toLowerCase();

    setState(() {
      if (query.isEmpty) {
        students = allStudents;
      } else {
        students = allStudents.where((student) {
          return student.name.toLowerCase().contains(query) ||
              student.nis.toString().contains(query) ||
              student.rombel.toLowerCase().contains(query);
        }).toList();
      }
    });
  }

  String getDisplayText() {
    final total = allStudents.length;
    final count = students.length;
    if (total == 0) return 'Menampilkan 0 siswa';
    if (count == 0) return 'Menampilkan 0 dari $total siswa';
    return 'Menampilkan 1 - $count dari $total siswa';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        titleSpacing: 0,
        title: Row(
          children: [
            SizedBox(width: 12),
            Icon(Icons.menu_book_outlined, color: Color(0xFF02398c), size: 28),
            SizedBox(width: 8),
            Text(
              "Jurnalku",
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(right: 12),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF02398c),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),

      body: ListView(
        children: [
          // Banner
          SizedBox(
            height: showFilter ? 700 : 300,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Background image
                Container(
                  height: showFilter ? 700 : 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Banner-Web.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // Blur effect
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Container(color: Colors.black.withOpacity(0)),
                  ),
                ),

                // === TEXT & SEARCH ===
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Direktori Siswa",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 8,
                            color: Colors.black.withOpacity(0.6),
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Temukan dan jelajahi profil siswa SMK Wikrama Bogor",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        shadows: [
                          Shadow(
                            blurRadius: 8,
                            color: Colors.black.withOpacity(0.6),
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          // SEARCH BAR
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Colors.grey,
                                width: 0.5,
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.search, color: Colors.grey[600]),
                                SizedBox(width: 10),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText:
                                          "Cari nama siswa, NIS, atau rombel...",
                                      border: InputBorder.none,
                                    ),
                                    onChanged: searchStudent,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF0A4D9E),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 12,
                                    ),
                                  ),
                                  child: Text(
                                    "Cari",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 10),

                          // Filter Button
                          // Tombol Filter Lanjutan
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                showFilter = !showFilter;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.grey.shade300),
                                color: Colors.grey.shade100,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.filter_list,
                                    size: 18,
                                    color: Colors.grey[700],
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    "Filter Lanjutan",
                                    style: TextStyle(color: Colors.grey[800]),
                                  ),
                                  SizedBox(width: 6),
                                  Icon(
                                    showFilter
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: Colors.grey[700],
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 10),

                          // === FILTER DROPDOWN CONTENT ===
                          if (showFilter)
                            Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade50,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(color: Colors.grey.shade200),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // ROMBEL
                                  Text(
                                    "Rombel",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  DropdownButtonFormField<String>(
                                    value: selectedRombel,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    items: rombelList
                                        .map(
                                          (item) => DropdownMenuItem(
                                            value: item,
                                            child: Text(item),
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (value) =>
                                        setState(() => selectedRombel = value),
                                  ),

                                  SizedBox(height: 16),

                                  // RAYON
                                  Text(
                                    "Rayon",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  DropdownButtonFormField<String>(
                                    value: selectedRayon,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    items: rayonList
                                        .map(
                                          (item) => DropdownMenuItem(
                                            value: item,
                                            child: Text(item),
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (value) =>
                                        setState(() => selectedRayon = value),
                                  ),

                                  SizedBox(height: 16),

                                  // JURUSAN
                                  Text(
                                    "Jurusan",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  DropdownButtonFormField<String>(
                                    value: selectedJurusan,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    items: jurusanList
                                        .map(
                                          (item) => DropdownMenuItem(
                                            value: item,
                                            child: Text(item),
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (value) =>
                                        setState(() => selectedJurusan = value),
                                  ),

                                  SizedBox(height: 20),

                                  // BUTTONS
                                  Row(
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // LAKUKAN FILTER
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Color(0xFF0A4D9E),
                                            padding: EdgeInsets.symmetric(
                                              vertical: 14,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Text(
                                            "Terapkan",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: OutlinedButton(
                                          onPressed: () {
                                            setState(() {
                                              selectedRombel = null;
                                              selectedRayon = null;
                                              selectedJurusan = null;
                                            });
                                          },
                                          style: OutlinedButton.styleFrom(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 14,
                                            ),
                                            side: BorderSide(
                                              color: Colors.grey,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Text(
                                            "Reset",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              getDisplayText(),
              style: TextStyle(color: Colors.grey[700], fontSize: 14),
            ),
          ),

          const SizedBox(height: 16),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: isLoading
                ? Center(
                    child: Padding(
                      padding: EdgeInsets.all(40),
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Column(
                    children: students.map((s) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: buildStudentCard(
                          name: s.name,
                          nis: s.nis.toString(),
                          rombel: s.rombel,
                          rayon: s.rayon,
                          portfolio: 0,
                          sertifikat: 0,
                        ),
                      );
                    }).toList(),
                  ),
          ),
        ],
      ),
    );
  }

  Widget buildStudentCard({
    required String name,
    required String nis,
    required String rombel,
    required String rayon,
    required int portfolio,
    required int sertifikat,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: Colors.grey.shade300,
              child: const Icon(Icons.person, color: Colors.white, size: 38),
            ),

            const SizedBox(height: 14),

            Text(
              name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 4),

            Text(
              "$nis | $rombel | $rayon",
              style: TextStyle(color: Colors.grey[600], fontSize: 13),
            ),

            const SizedBox(height: 12),
            Divider(color: Colors.grey.shade300),
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.folder_copy, size: 18, color: Colors.grey),
                    SizedBox(width: 6),
                    Text(
                      "$portfolio Portfolio",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Icon(Icons.verified_outlined, size: 18, color: Colors.grey),
                    SizedBox(width: 6),
                    Text(
                      "$sertifikat Sertifikat",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF02398c),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Lihat Detail",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
