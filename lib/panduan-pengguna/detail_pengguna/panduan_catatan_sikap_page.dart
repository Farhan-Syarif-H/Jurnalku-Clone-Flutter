import 'package:flutter/material.dart';

class PanduanCatatanSikapPage extends StatelessWidget {
  const PanduanCatatanSikapPage({super.key});

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
                  "Catatan\nSikap Saya",
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
              "Panduan untuk melihat dan memahami catatan sikap yang telah dilaporkan oleh guru.",
              style: TextStyle(
                fontSize: 18,
                height: 1.5,
              ),
            ),

            SizedBox(height: 30),

            // ================= JUDUL BAGIAN A =================
            Text(
              "A. Mengakses Catatan Sikap",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // ================= PARAGRAF PENJELASAN =================
            Text(
              "Untuk melihat catatan sikap Anda:",
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
                          TextSpan(text: "Login ke sistem menggunakan akun siswa Anda. "),
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
                          TextSpan(text: "Buka menu "),
                          TextSpan(
                            text: " Catatan Sikap Saya ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: "dari sidebar atau dashboard. "),

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
                          TextSpan(text: "Halaman akan menampilkan semua catatan sikap yang pernah dilaporkan untuk Anda. "),
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
              "B. Memahami Statistik Dashboard",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Di bagian atas halaman, terdapat 3 card statistik:",
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
                                text: "Total Catatan: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "Jumlah total catatan sikap yang pernah dilaporkan untuk Anda.",
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
                                text: "Dalam Perbaikan: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Catatan dengan status \"Belum Ada Perubahan\" atau \"Mulai Ada Perubahan\" (ditandai warna kuning).",
                              ),
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
                                text: "Sudah Berubah: ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text:
                                    "Catatan dengan status \"Sudah Berubah\" — menunjukkan Anda telah berhasil memperbaiki sikap (ditandai warna hijau).",
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

            SizedBox(height: 14),

            // ================= TARGET =================
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("✅  ", style: TextStyle(fontSize: 18)),
                Expanded(
                  child: Text(
                    "Target: Usahakan semua catatan mencapai status \"Sudah Berubah\" dengan terus memperbaiki diri.",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 40),

            // ================= JUDUL BAGIAN C =================
            Text(
              "C. Membaca Tabel Catatan",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Tabel catatan menampilkan informasi berikut:",
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
                  // Bullet: No
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("•  ", style: TextStyle(fontSize: 18)),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                            children: [
                              TextSpan(text: "No: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "Nomor urut catatan"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),

                  // Bullet: Kategori
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("•  ", style: TextStyle(fontSize: 18)),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                            children: [
                              TextSpan(text: "Kategori: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "Jenis catatan (Perbuatan, Sifat, atau Pembelajaran)"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Sub kategori
                  Padding(
                    padding: EdgeInsets.only(left: 32, top: 4, bottom: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // PERBUATAN (kata Perbuatan aja merah)
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 15.5, height: 1.5, color: Colors.black87),
                            children: [
                              TextSpan(
                                text: "Perbuatan",
                                style: TextStyle(color: Colors.red),
                              ),
                              TextSpan(text: " – Tindakan atau perilaku yang dilakukan"),
                            ],
                          ),
                        ),
                        SizedBox(height: 2),

                        // SIFAT
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 15.5, height: 1.5, color: Colors.black87),
                            children: [
                              TextSpan(
                                text: "Sifat",
                                style: TextStyle(color: Colors.orange),
                              ),
                              TextSpan(text: " – Karakter atau attitude"),
                            ],
                          ),
                        ),
                        SizedBox(height: 2),

                        // PEMBELAJARAN
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 15.5, height: 1.5, color: Colors.black87),
                            children: [
                              TextSpan(
                                text: "Pembelajaran",
                                style: TextStyle(color: Colors.blue),
                              ),
                              TextSpan(text: " – Terkait proses belajar"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                        SizedBox(height: 6),

                        // Bullet: Catatan
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("•  ", style: TextStyle(fontSize: 18)),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                                  children: [
                                    TextSpan(text: "Catatan: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: "Deskripsi detail temuan sikap/perilaku"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 6),

                        // Bullet: Status
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("•  ", style: TextStyle(fontSize: 18)),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                                  children: [
                                    TextSpan(text: "Status: ", style: TextStyle(fontWeight: FontWeight.bold)),
                                    TextSpan(text: "Status perkembangan perubahan Anda"),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        // Sub status
                        Padding(
                    padding: EdgeInsets.only(left: 32, top: 4, bottom: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // PERBUATAN (kata Perbuatan aja merah)
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 15.5, height: 1.5, color: Colors.black87),
                            children: [
                              TextSpan(
                                text: "Belum Ada Perubahan",
                                style: TextStyle(color: Colors.red),
                              ),
                              TextSpan(text: " – perlu segera diperbaiki"),
                            ],
                          ),
                        ),
                        SizedBox(height: 2),

                        // SIFAT
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 15.5, height: 1.5, color: Colors.black87),
                            children: [
                              TextSpan(
                                text: "Mulai Ada Perubahan",
                                style: TextStyle(color: Colors.orange),
                              ),
                              TextSpan(text: " – Sudah ada perbaikan, pertahankan!"),
                            ],
                          ),
                        ),
                        SizedBox(height: 2),

                        // PEMBELAJARAN
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 15.5, height: 1.5, color: Colors.black87),
                            children: [
                              TextSpan(
                                text: "Sudah Berubah",
                                style: TextStyle(color: Colors.green),
                              ),
                              TextSpan(text: " – Berhasil berubah positif"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

            SizedBox(height: 6),

            // Bullet: Dilaporkan
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("•  ", style: TextStyle(fontSize: 18)),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                      children: [
                        TextSpan(text: "Dilaporkan: ", style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: "Tanggal dan waktu catatan pertama kali dibuat"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6),

            // Bullet: Update Terakhir
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("•  ", style: TextStyle(fontSize: 18)),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                      children: [
                        TextSpan(text: "Update Terakhir: ", style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: "Tanggal dan waktu terakhir status diupdate oleh guru"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),



            SizedBox(height: 40),

            // ================= JUDUL BAGIAN D =================
            Text(
              "D. Melihat Riwayat Perubahan",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 12),

            Text(
              "Untuk melihat detail perkembangan perubahan sikap Anda:",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 14),

            // ================= NOMOR 1 =================
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("1.  ", style: TextStyle(fontSize: 16)),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                      children: [
                        TextSpan(
                          text: "Pada tabel, klik ikon jam (🕐) ",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: "di kolom Aksi pada catatan yang ingin dilihat.",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 12),

            // ================= NOMOR 2 =================
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("2.  ", style: TextStyle(fontSize: 16)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Modal riwayat akan terbuka menampilkan timeline perubahan dengan:",
                        style: TextStyle(fontSize: 16, height: 1.5),
                      ),
                      SizedBox(height: 8),

                      // ===== BULLET LIST =====
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("•  "),
                                Expanded(
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                                      children: [
                                        TextSpan(
                                          text: "Badge Status: ",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text: "Menunjukkan status dengan warna (merah/kuning/hijau).",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("•  "),
                                Expanded(
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                                      children: [
                                        TextSpan(
                                          text: "Waktu Update: ",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text: "Kapan update dilakukan (misal: \"2 hari yang lalu\").",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("•  "),
                                Expanded(
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                                      children: [
                                        TextSpan(
                                          text: "Nama Guru/Updater: ",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text: "Siapa yang melakukan evaluasi perubahan.",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("•  "),
                                Expanded(
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                                      children: [
                                        TextSpan(
                                          text: "Deskripsi: ",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text: "Catatan detail tentang perkembangan Anda.",
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
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 14),

            // ================= NOMOR 3 =================
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("3.  ", style: TextStyle(fontSize: 16)),
                Expanded(
                  child: Text(
                    "Timeline ditampilkan dari yang terbaru ke yang terlama dengan garis penghubung visual.",
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                ),
              ],
            ),

            SizedBox(height: 18),

            // ================= TIP =================
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("💡  ", style: TextStyle(fontSize: 20)),
                Expanded(
                  child: Text(
                    "Gunakan riwayat ini untuk memahami perkembangan Anda dan area yang masih perlu diperbaiki.",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),


            SizedBox(height: 40),

// ================= JUDUL BAGIAN E =================
            Text(
              "E. Menanggapi Catatan Sikap",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Yang harus Anda lakukan setelah menerima catatan sikap:",
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


            SizedBox(height: 40),

            // ================= JUDUL BAGIAN F =================
            Text(
              "F. Tips Perbaikan Diri",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Cara efektif untuk memperbaiki sikap dan perilaku: ",
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
                              TextSpan(text: "Jujur Pada Diri Sendiri: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "Akui kesalahan sebagai langkah awal perbaikan"),
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
                              TextSpan(text: "Minta Maaf: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "Jika ada pihak yang dirugikan, minta maaf dengan tulus"),
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
                              TextSpan(text: "Konsisten: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "Terapkan perubahan positif secara konsisten, bukan hanya sementara"),
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
                              TextSpan(text: "Cari Dukungan: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "Minta bantuan teman, guru, atau orang tua untuk mendukung perubahan Anda"),
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
                              TextSpan(text: "Evaluasi Berkala: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "Lihat perkembangan Anda melalui riwayat update status"),
                            ],
                          ),
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
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                            children: [
                              TextSpan(text: "Jangan Menyerah: ", style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: "Perubahan membutuhkan waktu, tetap semangat!"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            // ================= JUDUL BAGIAN G =================
            Text(
              "G. Memahami Kategori Catatan",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Penjelasan detail setiap kategori catatan:",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black87,
              ),
            ),

            SizedBox(height: 14),

            // ================= KATEGORI: PERBUATAN =================
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("•  ", style: TextStyle(fontSize: 20)),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                      children: [
                        TextSpan(
                          text: "Perbuatan (Merah) \n",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Tindakan fisik / perilaku yang dilakukan\nberkelahi, merusak fasilitas, membolos",
                        ),
                        TextSpan(text: "\nBiasanya memerlukan perhatian segera."),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 14),

            // ================= KATEGORI: SIFAT =================
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("•  ", style: TextStyle(fontSize: 20)),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                      children: [
                        TextSpan(
                          text: "Sifat (Orange) \n",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Karakter, sikap, atau attitude yang ditunjukkan\nContoh: tidak sopan, tidak disiplin, egois, dll",
                        ),
                        TextSpan(text: "\nBiasanya memerlukan perhatian segera."),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 14),

            // ================= KATEGORI: PEMBELAJARAN =================
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("•  ", style: TextStyle(fontSize: 20)),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                      children: [
                        TextSpan(
                          text: "Pembelajaran (Biru) \n",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Terkait dengan proses dan sikap belajar\nContoh: malas mengerjakan tugas, mengganggu kelas, tidak fokus, dll Berdampak pada prestasi akademik",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),

            // ================= JUDUL BAGIAN H =================
            Text(
              "H. Hak dan Kewajiban",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Yang perlu Anda ketahui:",
              style: TextStyle(fontSize: 16, height: 1.5),
            ),

            SizedBox(height: 16),

            // ========== HAK ==========
            Text(
              "Hak Anda:",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),

            SizedBox(height: 8),

            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• Melihat semua catatan sikap yang dilaporkan untuk Anda.", style: TextStyle(fontSize: 16, height: 1.5)),
                  Text("• Mengetahui perkembangan perubahan melalui riwayat update.", style: TextStyle(fontSize: 16, height: 1.5)),
                  Text("• Mendapat evaluasi yang objektif dan adil.", style: TextStyle(fontSize: 16, height: 1.5)),
                  Text("• Berkonsultasi dengan guru terkait catatan yang diterima.", style: TextStyle(fontSize: 16, height: 1.5)),
                ],
              ),
            ),

            SizedBox(height: 14),

            // ========== KEWAJIBAN ==========
            Text(
              "Kewajiban Anda:",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),

            SizedBox(height: 8),

            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• Membaca dan memahami setiap catatan yang diberikan.", style: TextStyle(fontSize: 16, height: 1.5)),
                  Text("• Melakukan introspeksi dan perbaikan diri.", style: TextStyle(fontSize: 16, height: 1.5)),
                  Text("• Menghormati evaluasi guru.", style: TextStyle(fontSize: 16, height: 1.5)),
                  Text("• Tidak mengulangi kesalahan yang sama.", style: TextStyle(fontSize: 16, height: 1.5)),
                  Text("• Menunjukkan perubahan positif yang konsisten.", style: TextStyle(fontSize: 16, height: 1.5)),
                ],
              ),
            ),

            SizedBox(height: 18),

            // CATATAN
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    "📌 Catatan: Anda hanya bisa melihat, tidak bisa mengedit atau menghapus catatan. Hanya guru yang dapat mengupdate status perubahan.",
                    style: TextStyle(fontSize: 16, height: 1.5, color: Colors.blue.shade600, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),

            SizedBox(height: 40),

            // ================= JUDUL BAGIAN I =================
Text(
  "I. FAQ (Pertanyaan Umum)",
  style: TextStyle(
    fontSize: 20,
    color: Colors.blue.shade900,
    fontWeight: FontWeight.bold,
  ),
),

SizedBox(height: 14),

// ========== FAQ 1 ==========
RichText(
  text: TextSpan(
    style: TextStyle(fontSize: 16, height: 1.6, color: Colors.black87),
    children: [
      TextSpan(text: "Q: ", style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(
        text: "Apakah orang tua bisa melihat catatan sikap saya?\n",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ],
  ),
),
Padding(
  padding: EdgeInsets.only(left: 20),
  child: Text(
    "A: Ya, sistem ini dirancang transparan agar orang tua juga dapat memantau perkembangan sikap anak melalui rapor atau laporan berkala.",
    style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
  ),
),

SizedBox(height: 18),

// ========== FAQ 2 ==========
RichText(
  text: TextSpan(
    style: TextStyle(fontSize: 16, height: 1.6, color: Colors.black87),
    children: [
      TextSpan(text: "Q: ", style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(
        text:
            "Berapa lama waktu untuk mengubah status dari \"Belum Ada Perubahan\" ke \"Sudah Berubah\"?\n",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ],
  ),
),
Padding(
  padding: EdgeInsets.only(left: 20),
  child: Text(
    "A: Tidak ada waktu pasti. Tergantung konsistensi perubahan positif yang Anda tunjukkan. Guru akan mengupdate status saat melihat perkembangan nyata.",
    style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
  ),
),

SizedBox(height: 18),

// ========== FAQ 3 ==========
RichText(
  text: TextSpan(
    style: TextStyle(fontSize: 16, height: 1.6, color: Colors.black87),
    children: [
      TextSpan(text: "Q: ", style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(
        text: "Apa yang harus dilakukan jika saya merasa catatan tidak adil?\n",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ],
  ),
),
Padding(
  padding: EdgeInsets.only(left: 20),
  child: Text(
    "A: Konsultasikan dengan guru yang membuat catatan atau wali kelas Anda secara langsung dengan sikap terbuka dan tidak defensif.",
    style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
  ),
),

SizedBox(height: 18),

// ========== FAQ 4 ==========
RichText(
  text: TextSpan(
    style: TextStyle(fontSize: 16, height: 1.6, color: Colors.black87),
    children: [
      TextSpan(text: "Q: ", style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(
        text: "Apakah catatan sikap mempengaruhi nilai rapor?\n",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ],
  ),
),
Padding(
  padding: EdgeInsets.only(left: 20),
  child: Text(
    "A: Ya, catatan sikap biasanya berpengaruh pada nilai sikap/kepribadian di rapor. Semakin baik sikap Anda, semakin baik nilai sikap Anda.",
    style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
  ),
),


SizedBox(height: 25),




          ],
        ),
      ),
    );
  }
}