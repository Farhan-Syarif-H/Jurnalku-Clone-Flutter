import 'package:flutter/material.dart';

class PanduanPortfolioPage extends StatelessWidget {
  const PanduanPortfolioPage({super.key});

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
                  "Mengelola\nPortofolio",
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
              "Panduan ini memberikan langkah-langkah untuk menambah, mengedit, dan menghapus portfolio siswa.",
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
              "Berikut adalah langkah-langkah untuk menambahkan portfolio baru:",
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
                            text: "Portfolio. ",
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
                            text: " + Upload Kartu Pelajar ",
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
                          TextSpan(text: "• Judul Portofolio: ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "Nama project/portfolio (wajib, maks 255 karakter)"),

                          TextSpan(text: "\n"),
                          TextSpan(text: "• Deskripsi: ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "Penjelasan detail tentang project (wajib)"),

                          TextSpan(text: "\n"),
                          TextSpan(text: "• Durasi Pengerjaan: ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "Waktu pengerjaan, contoh: \"3 bulan\", \"2 minggu\" (wajib, maks 255 karakter)"),

                          TextSpan(text: "\n"),
                          TextSpan(text: "• Link Portofolio: ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "URL project jika ada (opsional, harus URL valid)"),

                          TextSpan(text: "\n"),
                          TextSpan(text: "• Gambar Portofolio: ", style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: "Screenshot atau foto project (opsional, maks 2MB)"),
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
                          TextSpan(text: "untuk menyimpan portfolio."),
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
              "B. Mengedit Portofolio",
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
                  TextSpan(text: "Berikut adalah langkah-langkah untuk mengedit portfolio: ", style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87)),
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
                            text: "Temukan portfolio yang ingin diedit pada halaman Portfolio.",
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
                            text: "pada card portfolio yang ingin diedit.",
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
              "C. Menghapus Portofolio",
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
                  TextSpan(text: "Berikut adalah langkah-langkah untuk menghapus portfolio: ", style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87)),
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
                            text: "Temukan portfolio yang ingin dihapus pada halaman Portfolio.",
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
                            text: "pada card portfolio.",
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
                          TextSpan(text: "Konfirmasi penghapusan akan muncul."),
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
                          TextSpan(text: " untuk menghapus portfolio."),
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

            // ================= JUDUL BAGIAN D =================
            Text(
              "D. Melihat Detail Portfolio",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // ================= PARAGRAF PENJELASAN =================
            Text(
              "Untuk melihat detail lengkap portfolio: ",
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
                          TextSpan(text: "Klik tombol "),
                          TextSpan(
                            text: "Lihat Detail ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: "pada card portfolio."),
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
                          TextSpan(text: "Halaman detail akan menampilkan informasi lengkap termasuk: \n"),
                          TextSpan(text: "• Gambar portfolio (dapat diklik untuk preview ukuran penuh) "),
                          TextSpan(text: "\n"),
                          TextSpan(text: "• Judul dan deskripsi lengkap "),
                          TextSpan(text: "\n"),
                          TextSpan(text: "• Durasi Pengerjaan: "),
                          TextSpan(text: "\n"),
                          TextSpan(text: "• Link Portofolio (jika tersedia): "),
                          TextSpan(text: "\n"),
                          TextSpan(text: "• Tanggal dibuat "),
                          TextSpan(text: "\n"),
                          TextSpan(text: "• Portfolio lainnya dari pemilik yang sama "),
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
                          TextSpan(
                            text: "Anda dapat mengedit atau menghapus portfolio langsung dari halaman detail jika Anda adalah pemiliknya.",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            // ================= JUDUL BAGIAN E =================
              Text(
                "E. Tips Portfolio yang Baik",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              Text(
                "Untuk membuat portfolio yang berkualitas, perhatikan hal-hal berikut:",
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
                          child: Text(
                            "Gunakan judul yang jelas dan menarik (maks 255 karakter).",
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
                            "Tulis deskripsi yang detail dan informatif — deskripsi dapat mengandung line break untuk memudahkan pembacaan.",
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
                            "Isi durasi pengerjaan dengan jelas, contoh: \"2 minggu\", \"3 bulan\".",
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
                            "Sertakan link project yang valid jika tersedia online (GitHub, demo live, dll).",
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
                            "Upload gambar dengan kualitas baik (format: JPEG, PNG, JPG, GIF, maks 2MB).",
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
                            "Pastikan semua informasi akurat dan up-to-date.",
                            style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                          ),
                        ),
                      ],
                    ),
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
              "Jika mengalami masalah saat mengelola portfolio, periksa beberapa solusi berikut:",
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
                              TextSpan(text: "Modal tidak terbuka: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "Refresh halaman dan coba lagi."),
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
                              TextSpan(text: "Error saat menyimpan: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "Pastikan semua field wajib sudah diisi dengan benar."),
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
                              TextSpan(text: "Gambar tidak terupload: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "Pastikan ukuran gambar tidak melebihi 2MB dan formatnya JPG, PNG, atau GIF."),
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
                              TextSpan(text: "Link tidak valid: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "Pastikan URL dimulai dengan http:// atau https://."),
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
                              TextSpan(text: "Deskripsi mengandung enter: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "Sistem sudah mendukung line break, tapi jika masih bermasalah coba refresh browser."),
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