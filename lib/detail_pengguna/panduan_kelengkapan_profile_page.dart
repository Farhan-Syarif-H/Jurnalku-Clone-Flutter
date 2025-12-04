import 'package:flutter/material.dart';

class PanduanKelengkapanProfilePage extends StatelessWidget {
  const PanduanKelengkapanProfilePage({super.key});

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
                  "Kelengkapan\nProfil",
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

            Text(
              "Untuk melengkapi profil Anda, klik nama/foto profil Anda di bagian atas halaman untuk membuka halaman profil.",
              style: TextStyle(
                fontSize: 18,
                height: 1.5,
              ),
            ),

            SizedBox(height: 30),

            // ================= JUDUL BAGIAN A =================
            Text(
              "A. Mengunggah Dokumen",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // ================= PARAGRAF PENJELASAN =================
            Text(
              "Di halaman profil Anda, scroll ke bawah hingga menemukan bagian \"Dokumen\".",
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
                          TextSpan(
                            text: "Upload CV (Curriculum Vitae)\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: "Klik tombol "),
                          TextSpan(
                            text: "\"Upload CV\" ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: "pada bagian Curriculum Vitae.\n"),
                          TextSpan(text: "Pilih file CV Anda (format: PDF, DOC, DOCX, maksimal 4MB).\n"),
                          TextSpan(text: "File akan otomatis terupload setelah dipilih."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),

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
                          TextSpan(
                            text: "Upload Kartu Pelajar\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: "Klik tombol "),
                          TextSpan(
                            text: "\"Upload Kartu Pelajar\" ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: "pada bagian Kartu Pelajar.\n"),
                          TextSpan(text: "Pilih foto/scan kartu pelajar Anda (format: PDF, JPG, PNG, maksimal 2MB).\n"),
                          TextSpan(text: "File akan otomatis terupload setelah dipilih.\n\n"),
                          TextSpan(
                            text: "*Kartu pelajar hanya dapat dilihat oleh Anda dan guru",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),


            SizedBox(height: 40),


            // ================= JUDUL BAGIAN B =================
            Text(
              "B. Mengelola Media Sosial",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),


            // ================= PARAGRAF PENJELASAN =================
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "Di bagian ", style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87)),
                  TextSpan(text: "\"Media Sosial \"", style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87, fontWeight: FontWeight.bold)),
                  TextSpan(text: ", Anda dapat mengelola media sosial pada halaman profil Anda:", style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87)),
                ],
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
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: "Klik tombol ", style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87)),
                          TextSpan(text: "\"Edit\"", style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87, fontWeight: FontWeight.bold)),
                          TextSpan(text: " di pojok kanan atas bagian Media Sosial.", style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87)),
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
                    child: Text(
                      "Modal \"Edit Media Sosial\" akan terbuka.",
                      style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8),

            // ================= LIST NOMOR 3 (sub detail) =================
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
                          TextSpan(text: "Isi informasi media sosial:\n"),
                          TextSpan(text: "• Nama Platform: ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          TextSpan(text: "Masukkan nama platform (Instagram, LinkedIn, GitHub, dll.)"),
                          TextSpan(text: "\n"),
                          TextSpan(text: "• URL: ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          TextSpan(text: "Masukan link lengkap profil media sosial Anda"),
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
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: "Untuk menambah platform lain, klik ", style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87)),
                          TextSpan(text: "\"Tambah Media Sosial\"", style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87, fontWeight: FontWeight.bold)),
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
              padding: EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("5. ", style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                        children: [
                          TextSpan(text: "Klik tombol "),
                          TextSpan(
                            text: "\"Simpan Perubahan\"",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                          ),
                          TextSpan(text: " untuk menyimpan."),
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
              "C. Tips Penting",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // ================= BULLET LIST =================
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Bullet 1
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("•  ", style: TextStyle(fontSize: 18)),
                    Expanded(
                      child: Text(
                        "Pastikan file yang diupload tidak melebihi batas ukuran maksimal.",
                        style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),

                // Bullet 2
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("•  ", style: TextStyle(fontSize: 18)),
                    Expanded(
                      child: Text(
                        "Gunakan URL lengkap untuk media sosial (dimulai dengan https://).",
                        style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),

                // Bullet 3
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("•  ", style: TextStyle(fontSize: 18)),
                    Expanded(
                      child: Text(
                        "Profil yang lengkap akan membantu guru dan teman-teman mengenal Anda lebih baik.",
                        style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),

                // Bullet 4
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("•  ", style: TextStyle(fontSize: 18)),
                    Expanded(
                      child: Text(
                        "Periksa kembali informasi yang dimasukkan sebelum menyimpan.",
                        style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                      ),
                    ),
                  ],
                ),
              ],
            ),

          SizedBox(height: 12),

          ],
        ),
      ),
    );
  }
}