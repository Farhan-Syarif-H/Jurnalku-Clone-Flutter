import 'package:flutter/material.dart';
import 'package:jurnalku_clone/dashboard_page.dart';
import 'services/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class InfoItem {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color iconColor;

  InfoItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.iconColor,
  });
}

class InfoTile extends StatelessWidget {
  final InfoItem item;

  const InfoTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(item.icon, size: 40, color: item.iconColor),

          SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 6),

                Text(item.subtitle, style: TextStyle(fontSize: 15)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController nisController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isLoading = false;

  bool _isPasswordHidden = true;

  final List<InfoItem> infoItems = [
    InfoItem(
      icon: Icons.home,
      title: "Dirancang untuk sekolah kami",
      subtitle:
          "Dikembangkan untuk memenuhi kebutuhan sekolah dengan fokus pada kemajuan siswa.",
      iconColor: Colors.blue,
    ),
    InfoItem(
      icon: Icons.school,
      title: "Pemantauan yang Terstruktur",
      subtitle:
          "Memudahkan guru dalam menyusun dan memantau daftar kompetensi keahlian yang harus dikuasai siswa.",
      iconColor: Colors.green,
    ),
    InfoItem(
      icon: Icons.people,
      title: "Fitur Praktis dan Bermanfaat",
      subtitle:
          "Termasuk reminder otomatis, grafik perkembangan, dan analisis mendalam untuk efektivitas belajar.",
      iconColor: Colors.orange,
    ),
    InfoItem(
      icon: Icons.book,
      title: "Pengajuan Kompetensi oleh Siswa",
      subtitle:
          "Siswa dapat mengajukan kompetensi yang telah dikuasai untuk diverifikasi oleh guru.",
      iconColor: Colors.red,
    ),
    InfoItem(
      icon: Icons.check_circle,
      title: "Validasi dan Tanda Tangan Guru",
      subtitle:
          "Setiap kompetensi yang disetujui akan diberikan tanda terima dan tanda tangan guru sebagai",
      iconColor: Colors.purple,
    ),
    InfoItem(
      icon: Icons.security,
      title: "Pantauan Real-Time dan Transparan",
      subtitle:
          "Monitoring langsung, menciptakan lingkungan belajar yang efisien.",
      iconColor: Colors.teal,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/Banner-Web.jpg',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Masuk untuk memulai ",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Jurnalku",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF02398C),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 45),

                  const Text(
                    "Username atau NIS",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 15),

                  TextField(
                    controller: nisController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Masukkan username atau NIS",
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 15),

                  TextField(
                    controller: passwordController,
                    obscureText: _isPasswordHidden,
                    decoration: InputDecoration(
                      hintText: "Masukkan password",
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF02398C),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () async {
                        setState(() => _isLoading = true);

                        try {
                          final result = await AuthService.login(
                            nis: nisController.text,
                            password: passwordController.text,
                          );

                          if (result.success) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DashboardPage(),
                              ),
                            );
                          }
                        } catch (e) {
                          String errorMessage = e.toString();

                          // hapus "Exception: "
                          if (errorMessage.contains('Exception:')) {
                            errorMessage = errorMessage.replaceFirst(
                              'Exception: ',
                              '',
                            );
                          }

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(errorMessage),
                              backgroundColor: Colors.red,
                            ),
                          );
                        } finally {
                          setState(() => _isLoading = false);
                        }
                      },

                      child: const Text(
                        "Masuk",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),
                  Center(
                    child: Text(
                      "Lupa password? Hubungi guru laboran",
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 50),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.grey[250],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text(
                    "Menyatukan Upaya untuk Kemajuan Siswa",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif",
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Column(
              children: infoItems.map((item) => InfoTile(item: item)).toList(),
            ),

            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              color: Color(0xFF02398C),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.chat, size: 35, color: Colors.white),
                      SizedBox(width: 25),

                      Icon(Icons.camera_alt, size: 35, color: Colors.white),
                      SizedBox(width: 25),

                      Icon(Icons.work, size: 35, color: Colors.white),
                      SizedBox(width: 25),

                      Icon(
                        Icons.play_circle_fill,
                        size: 35,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Text(
                    "© GEN-28 PPLG SMK Wikrama. All Rights Reserved",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
