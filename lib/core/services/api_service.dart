import 'dart:convert';

import 'package:dio/dio.dart';

class ApiService {
  static Future<List<dynamic>> get(String url) async {
    final dio = Dio();
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.data);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
