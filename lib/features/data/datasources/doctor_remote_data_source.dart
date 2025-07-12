import 'package:docfinder/core/services/api_config.dart';
import 'package:docfinder/core/services/api_service.dart';
import 'package:docfinder/features/data/models/doctor_model.dart';

class DoctorRemoteDataSource {
  Future<List<DoctorModel>> getDoctors() async {
    final url = '${ApiConfig.baseUrl}/api/v1/test/doctors';
    final data = await ApiService.get(url);
    return data.map<DoctorModel>((e) => DoctorModel.fromJson(e)).toList();
  }

  Future<DoctorModel> getDoctorsById(String id) async {
    final url = '${ApiConfig.baseUrl}/api/v1/test/doctors/$id';
    final data = await ApiService.getById(url);
    return DoctorModel.fromJson(data);
  }
}
