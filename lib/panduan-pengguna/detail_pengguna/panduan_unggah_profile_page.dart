import 'package:flutter/material.dart';

class PanduanUnggahProfilePage extends StatelessWidget {
  const PanduanUnggahProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ================= APP BAR ====================
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          padding:  EdgeInsets.symmetric(horizontal: 16),
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

              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 24),
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
                  "Unggah\nProfile",
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
              "Halaman ini memberikan panduan langkah demi langkah untuk "
              "mengunggah foto profil pengguna. Pengguna diinstruksikan untuk "
              "mengakses bagian Pengaturan Akun, mengisi field Unggah Photo Profile, "
              "dan menyimpan perubahan yang telah dilakukan.",
              style: TextStyle(
                fontSize: 18,
                height: 1.5,
                
              ),
            ),

            SizedBox(height: 16),

            Text(
              "1. Klik pada bagian Pengaturan Akun,\n"
              "2. Lalu isi field Unggah Photo Profile\n"
              "3. Jika sudah, klik Simpan",
              style: TextStyle(
                fontSize: 18,
                height: 1.8,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
