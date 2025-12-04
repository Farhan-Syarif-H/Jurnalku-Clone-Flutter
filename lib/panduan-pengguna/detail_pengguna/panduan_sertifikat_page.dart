import 'package:flutter/material.dart';

class PanduanSertifikatPage extends StatelessWidget {
  const PanduanSertifikatPage({super.key});

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
                  "Mengelola\nSertifikat",
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
              "Panduan ini memberikan langkah-langkah untuk menambah, mengedit, dan menghapus sertifikat siswa.",
              style: TextStyle(
                fontSize: 18,
                height: 1.5,
              ),
            ),

            SizedBox(height: 30),

            // ================= JUDUL BAGIAN A =================
            Text(
              "A. Menambah Sertifikat Baru",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // ================= PARAGRAF PENJELASAN =================
            Text(
              "Berikut adalah langkah-langkah untuk menambahkan sertifikat baru: ",
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
                          TextSpan(text: "Buka profil Anda (klik foto profil atau nama Anda), kemudian klik tab "),
                          TextSpan(
                            text: "Sertifikat. ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
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
                          TextSpan(text: "Klik tombol "),
                          TextSpan(
                            text: " + Tambah Sertifikat. ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),

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
                          TextSpan(text: "Isi form yang muncul dengan detail berikut:\n"),
                          TextSpan(text: "• Judul: ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "Nama Sertifikat (wajib, maks 255 karakter)"),

                          TextSpan(text: "\n"),
                          TextSpan(text: "• Deskripsi: ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "Penjelasan tentang sertifikat (opsional, maks 1000 karakter)"),

                          TextSpan(text: "\n"),
                          TextSpan(text: "• Durasi Pengerjaan: ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "Waktu pengerjaan, contoh: \"3 bulan\", \"2 minggu\" (wajib, maks 255 karakter)"),

                          TextSpan(text: "\n"),
                          TextSpan(text: "• File Sertifikat: ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "Upload file sertifikat (wajib, maks 10MB)"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),

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
                          TextSpan(text: "Klik tombol "),
                          TextSpan(
                            text: "Simpan ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: "untuk menyimpan Sertifikat."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),
            Text(
              "*Format file yang didukung: JPEG, PNG, JPG, GIF, WEBP, PDF, DOC, DOCX (maks 10MB). ",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.blue.shade700,
              ),
            ),

            SizedBox(height: 40),

            // ================= JUDUL BAGIAN B =================
            Text(
              "B. Mengedit Sertifikat",
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
                  TextSpan(text: "Berikut adalah langkah-langkah untuk mengedit Sertifikat: ", style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87)),
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
                          TextSpan(
                            text: "Temukan sertifikat yang ingin diedit pada tab Sertifikat di profil Anda.",
                            style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
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
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Klik Ikon ",
                            style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                          ),
                          TextSpan(
                            text: "Pensil (✏️) ",
                            style: TextStyle(
                              fontSize: 16, height: 1.5,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "pada card sertifikat yang ingin diedit.",
                            style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                          ),
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
                          TextSpan(text: "Modal edit akan terbuka dengan data yang sudah terisi."),
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
                          TextSpan(
                            text: "Ubah data yang diperlukan sesuai kebutuhan.",
                            style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                          ),
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
                            text: "Update",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " untuk menyimpan perubahan."),
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
              "C. Melihat Sertifikat",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // ================= PARAGRAF AWAL =================
            Text(
              "Berikut adalah cara melihat sertifikat berdasarkan jenis file:",
              style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
            ),

            SizedBox(height: 14),

            // ================= BULLET: FILE GAMBAR =================
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("•  ", style: TextStyle(fontSize: 20)),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ======= Judul =======
                        Text(
                          "File Gambar (JPG, PNG, GIF, WEBP):",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Colors.black87,
                          ),
                        ),

                        // ======= DESKRIPSI DENGAN PADDING =======
                        Padding(
                          padding: EdgeInsets.only(left: 10), // <<— padding deskripsi
                          child: Text(
                            "Klik pada gambar sertifikat untuk melihat preview dalam ukuran penuh\n"
                            "Modal preview akan terbuka dengan gambar yang dapat di-zoom\n"
                            "Klik tombol close atau area gelap di luar gambar untuk menutup preview",
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.5,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 14),

            // ================= BULLET: FILE PDF =================
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("•  ", style: TextStyle(fontSize: 20)),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "File PDF:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Colors.black87,
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Klik tombol \"Preview PDF\" untuk melihat PDF dalam modal preview\n"
                            "Modal akan menampilkan PDF viewer dengan fitur download\n"
                            "Gunakan tombol download untuk menyimpan PDF ke perangkat Anda",
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.5,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 14),

            // ================= BULLET: FILE DOC =================
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("•  ", style: TextStyle(fontSize: 20)),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "File Dokumen (DOC/DOCX):",
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Klik tombol download untuk mengunduh file.",
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.5,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 14),

            // ================= BULLET: CATATAN =================
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("•  ", style: TextStyle(fontSize: 20)),
                  Expanded(
                    child: Text(
                      "Sertifikat Anda dapat dilihat oleh guru dan pengunjung profil publik Anda.",
                      style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            // ================= JUDUL BAGIAN D =================
            Text(
              "D. Menghapus Sertifikat",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // ================= PARAGRAF PENJELASAN =================
            Text(
              "Berikut adalah langkah-langkah untuk menghapus sertifikat: ",
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
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Temukan sertifikat yang ingin dihapus pada halaman Portfolio.",
                            style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
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
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Klik Ikon ",
                            style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                          ),
                          TextSpan(
                            text: "tempat sampah (🗑️) ",
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.5,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "pada card sertifikat.",
                            style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                          ),
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
                          TextSpan(text: "Konfirmasi penghapusan akan muncul, baca peringatan dengan teliti."),
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
                          TextSpan(text: "Klik tombol "),
                          TextSpan(
                            text: "Ya, Hapus ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: " untuk menghapus sertifikat."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),

            // ================= CATATAN =================
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "⚠️ Catatan Penting: Penghapusan portfolio bersifat permanen dan tidak dapat dibatalkan.",
                      style: TextStyle(fontSize: 16, height: 1.5, color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 40),

            // ================= JUDUL BAGIAN E =================
            Text(
              "E. Tips Sertifikat yang Baik",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Untuk mengelola sertifikat dengan baik, perhatikan hal-hal berikut:",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 14),

            // ================= BULLET LIST =================
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Bullet 1
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("•  ", style: TextStyle(fontSize: 18)),
                      Expanded(
                        child: Text(
                          "Gunakan nama sertifikat yang jelas dan spesifik.",
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
                          "Sertakan nama lembaga/organisasi penerbit dalam judul atau deskripsi.",
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
                          "Deskripsi dapat mengandung line break untuk membuat poin-poin yang lebih mudah dibaca.",
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
                          "Gunakan resolusi gambar yang cukup agar teks terlihat jelas (minimal 1024px lebar).",
                          style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),

                  // Bullet 5
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("•  ", style: TextStyle(fontSize: 18)),
                      Expanded(
                        child: Text(
                          "Format PDF lebih profesional dan universal untuk dokumen sertifikat.",
                          style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),

                  // Bullet 6
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("•  ", style: TextStyle(fontSize: 18)),
                      Expanded(
                        child: Text(
                          "Tambahkan deskripsi untuk menjelaskan skill atau pencapaian yang diperoleh.",
                          style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),

                  // Bullet 7
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("•  ", style: TextStyle(fontSize: 18)),
                      Expanded(
                        child: Text(
                          "Pastikan file tidak melebihi batas ukuran 10MB.",
                          style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                ],
              ),
            ),



            SizedBox(height: 40),

            // ================= JUDUL BAGIAN F =================
Text(
  "F. Troubleshooting",
  style: TextStyle(
    fontSize: 20,
    color: Colors.blue.shade900,
    fontWeight: FontWeight.bold,
  ),
),

SizedBox(height: 10),

Text(
  "Jika mengalami masalah saat mengelola sertifikat:",
  style: TextStyle(
    fontSize: 16,
    height: 1.5,
    color: Colors.black87,
  ),
),

SizedBox(height: 12),

// ================= BULLET LIST =================
Padding(
  padding: EdgeInsets.only(left: 16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Bullet 1
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  ", style: TextStyle(fontSize: 18)),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                children: [
                  TextSpan(
                    text: "Modal tidak terbuka: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Pastikan JavaScript aktif di browser Anda, refresh halaman dan coba lagi.",
                  ),
                ],
              ),
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
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                children: [
                  TextSpan(
                    text: "Error saat upload: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text:
                          "Periksa ukuran file (maks 10MB), pastikan format file didukung (JPG, PNG, GIF, WEBP, PDF, DOC, DOCX). Coba compress file jika terlalu besar."),
                ],
              ),
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
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                children: [
                  TextSpan(
                    text: "Preview tidak muncul: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text:
                          "Pastikan file sertifikat valid dan tidak corrupt."),
                ],
              ),
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
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                children: [
                  TextSpan(
                    text: "PDF tidak bisa dibuka: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Gunakan browser modern seperti Chrome, Firefox, atau Edge untuk preview PDF.",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 6),

      // Bullet 5
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  ", style: TextStyle(fontSize: 18)),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                children: [
                  TextSpan(
                    text: "Deskripsi dengan enter bermasalah: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Sistem sudah mendukung line break. Jika masih bermasalah, refresh browser Anda.",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  ),
),


            SizedBox(height: 12),

          ],
        ),
      ),
    );
  }
}