import 'package:flutter/material.dart';
import 'package:jurnalku_clone/login_page.dart';
import 'package:jurnalku_clone/panduan_pengguna.dart';
import 'package:jurnalku_clone/pengaturan_akun_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jurnalku Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LoginPage(),
    );
  }
}
