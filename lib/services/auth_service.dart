import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/login_response.dart';

class AuthService {
  static const String baseUrl = "http://15.15.6.103:8000/api";

  static Future<LoginResponse> login({
    required String nis,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse("$baseUrl/login"),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
      body: jsonEncode({"nis": nis, "password": password}),
    );

    final Map<String, dynamic> json = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return LoginResponse.fromJson(json);
    } else {
      throw Exception(json['message'] ?? 'Login gagal');
    }
  }
}
