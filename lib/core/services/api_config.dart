import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConfig {
  static String baseUrl =
      dotenv.env['BASE_URL'] ?? 'https://686f534991e85fac42a07d85.mockapi.io';
}
