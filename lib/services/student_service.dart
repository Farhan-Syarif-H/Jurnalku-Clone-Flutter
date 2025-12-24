import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/student_model.dart';

class StudentService {
  static const String baseUrl = "http://15.15.6.103:8000/api";

  static Future<List<Student>> fetchStudents() async {
    final response = await http.get(
      Uri.parse("$baseUrl/students"),
      headers: {
        "Accept": "application/json",
      },
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final List data = json['data'];

      return data.map((e) => Student.fromJson(e)).toList();
    } else {
      throw Exception("Gagal mengambil data siswa");
    }
  }
}
