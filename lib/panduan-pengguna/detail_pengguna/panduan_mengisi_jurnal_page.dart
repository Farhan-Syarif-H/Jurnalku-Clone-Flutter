import 'package:flutter/material.dart';

class PanduanMengisiJurnalPage extends StatelessWidget {
  const PanduanMengisiJurnalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // ================= APP BAR ====================
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.home, color: Colors.black),

              // ================= NAMA USER ====================
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "M. Arizqy Khylmi Alkazhia",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "PPLG XII-3",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  ClipOval(
                    child: Image.asset(
                      'assets/images/profile-blank.jpg',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // ================= BODY (ISI PANDUAN) ====================
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Row(
                children: [
                  Icon(Icons.arrow_back, size: 18, color: Colors.blue.shade900),
                  SizedBox(width: 6),
                  Text(
                    "Kembali ke Panduan Penggunaan",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            // ====== Title ======
            Row(
              children: [
                Icon(Icons.menu_book_outlined, color: Colors.blue.shade900),
                SizedBox(width: 6),
                Text(
                  "Panduan\nPenggunaan",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 100),
                Text(
                  "Mengisi\nJurnal",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),

            Text(
              "Panduan ini memberikan langkah-langkah rinci bagi siswa untuk mengisi jurnal harian, mengelola pekerjaan, mempelajari materi, dan mengelola poin yang diperoleh berdasarkan aktivitas yang dilakukan.",
              style: TextStyle(
                fontSize: 18,
                height: 1.5,
              ),
            ),

            SizedBox(height: 30),

            // ================= JUDUL BAGIAN A =================
            Text(
              "A. Mengisi Jurnal harian",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // ================= PARAGRAF PENJELASAN =================
            Text(
              "Jurnal adalah catatan harian yang berisi kegiatan yang dilakukan oleh siswa. "
              "Jurnal ini dapat diisi oleh siswa setiap hari. Berikut langkah-langkah mengisi jurnal:",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 12),

            // ================= LIST NOMOR 1 =================
            Padding(
              padding: EdgeInsets.only(left: 20), // 🔥 INI YANG BIKIN MENJOROK KE KANAN
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1.", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 6),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                        children: [
                          TextSpan(text: "Pilih menu "),
                          TextSpan(
                            text: "Jurnal Pembiasaan",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(text: " pada sidebar."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8),

            // ================= LIST NOMOR 2 =================
            Padding(
              padding: EdgeInsets.only(left: 20), // 🔥 SAMA, DIBUAT MENJOROK
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("2.", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      "Bagian (A) adalah tabel untuk mengisi jurnal. Sesuaikan tanggal kegiatan, "
                      "kemudian isi kegiatan yang dilakukan pada hari tersebut. Kemudian klik tombol "
                      "Simpan yang akan muncul ketika selesai mengisi kegiatan untuk menyimpan jurnal "
                      "yang telah diisi.",
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 6),

            // ================= WARNING TEXT =================
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "*Jurnal yang sudah berlalu tidak dapat diedit.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),

            SizedBox(height: 30),


            // ================= JUDUL BAGIAN B =================
            Text(
              "B. Pekerjaan yang dilakukan",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // ================= PARAGRAF PENJELASAN =================
            Text(
              "Berikut adalah langkah-langkah untuk mengelola pekerjaan yang dilakukan:",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 12),

            // ================= LIST NOMOR 1 =================
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                        children: [
                          TextSpan(text: "Temukan bagian ini pada halaman "),
                          TextSpan(
                            text: "Jurnal Pembiasaan",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(text: " atau "),
                          TextSpan(
                            text: "Klik disini",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8),

            // ================= LIST NOMOR 2 =================
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("2. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                        children: [
                          TextSpan(text: "Klik tombol "),
                          TextSpan(
                            text: "+ Tambah Pekerjaan ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " untuk menambahkan pekerjaan baru."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8),

            // ================= LIST NOMOR 3 =================
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("3. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                        children: [
                          TextSpan(
                            text: "Isi form yang muncul dengan detail pekerjaan, tanggal, dan saksi.",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8),

            // ================= LIST NOMOR 4 =================
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("4. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                        children: [
                          TextSpan(text: "Klik tombol "),
                          TextSpan(
                            text: "Simpan",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " untuk menyimpan pekerjaan."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8),

            // ================= LIST NOMOR 5 =================
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("5. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                        children: [
                          TextSpan(text: "Untuk mengedit atau menghapus pekerjaan, klik tombol "),
                          TextSpan(
                            text: "Edit ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: "atau "),
                          TextSpan(
                            text: "Delete ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: "pada pekerjaan yang diinginkan."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),


            SizedBox(height: 40),

            // ================= JUDUL BAGIAN C =================
            Text(
              "C. Materi yang dipelajari",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // ================= PARAGRAF PENJELASAN =================
            Text(
              "Berikut adalah langkah-langkah untuk mengelola materi yang dipelajari:",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 12),

           // ================= LIST NOMOR 1 =================
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                        children: [
                          TextSpan(text: "Temukan bagian ini pada halaman "),
                          TextSpan(
                            text: "Jurnal Pembiasaan",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(text: " atau "),
                          TextSpan(
                            text: "Klik disini",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8),

            // ================= LIST NOMOR 2 =================
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("2. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                        children: [
                          TextSpan(text: "Klik tombol "),
                          TextSpan(
                            text: "+ Tambah Materi",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " untuk menambahkan materi baru."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8),

            // ================= LIST NOMOR 3 =================
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("3. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                        children: [
                          TextSpan(
                            text:
                                "Isi form yang muncul dengan detail materi, status, tanggal, dan catatan yang ingin disampaikan ke guru.",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8),

            // ================= LIST NOMOR 4 =================
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("4. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                        children: [
                          TextSpan(text: "Klik tombol "),
                          TextSpan(
                            text: "Simpan",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " untuk menyimpan materi."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            // ================= JUDUL BAGIAN D =================
            Text(
              "D. Poin",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // ================= PARAGRAF PENJELASAN =================
            Text(
              "Berikut adalah langkah-langkah untuk mengelola poin:",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 12),

            // ================= LIST NOMOR 1 =================
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                        children: [
                          TextSpan(text: "Temukan bagian ini pada halaman "),
                          TextSpan(
                            text: "Jurnal Pembiasaan",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(text: " atau "),
                          TextSpan(
                            text: "Klik disini",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8),

            // ================= LIST NOMOR 2 =================
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("2. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                        children: [
                          TextSpan(text: "Lihat kategori poin dan jumlah poin yang telah diperoleh."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8),

            // ================= LIST NOMOR 3 =================
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("3. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                        children: [
                          TextSpan(text: "Poin ceklist pembiasaan akan ditampilkan secara otomatis berdasarkan aktivitas yang telah dilakukan."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8),

            // ================= LIST NOMOR 4 =================
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("4. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                        children: [
                          TextSpan(text: "Jumlah keseluruhan poin akan ditampilkan di bagian bawah tabel poin."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),


            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}