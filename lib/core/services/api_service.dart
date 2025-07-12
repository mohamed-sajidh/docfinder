import 'package:dio/dio.dart';

class ApiService {
  static Future<List<dynamic>> get(String url) async {
    final dio = Dio();
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('Failed to load data');
    }
  }

  static Future<Map<String, dynamic>> getById(String url) async {
    final dio = Dio();
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
