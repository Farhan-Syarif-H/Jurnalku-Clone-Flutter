import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jurnalku_clone/models/witness_request_model.dart';

class WitnessRequestService {
  static const String baseUrl =
      'http://15.15.6.103:8000/api/witness-requests';

  static Future<List<WitnessRequest>> fetchRequests() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      return data.map((e) => WitnessRequest.fromJson(e)).toList();
    } else {
      throw Exception('Gagal memuat permintaan saksi');
    }
  }
}
