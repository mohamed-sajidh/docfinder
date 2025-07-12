import 'package:docfinder/features/data/datasources/doctor_remote_data_source.dart';
import 'package:docfinder/features/domain/entity/doctor_entity.dart';

class DoctorRepository {
  late final DoctorRemoteDataSource doctorRemoteDataSource;
  DoctorRepository(this.doctorRemoteDataSource);

  Future<List<DoctorEntity>> fetchDoctors() async {
    return await doctorRemoteDataSource.getDoctors();
  }

  Future<DoctorEntity> fetchDoctorsById(String id) async {
    return await doctorRemoteDataSource.getDoctorsById(id);
  }
}
