import 'package:flutter/material.dart';
import 'package:jurnalku_clone/dashboard_page.dart';
import 'package:jurnalku_clone/explore_page.dart';
import 'package:jurnalku_clone/login_page.dart';

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
      home: LoginPage(),
    );
  }
}
