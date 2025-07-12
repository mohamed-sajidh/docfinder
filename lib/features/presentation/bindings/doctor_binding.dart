import 'package:docfinder/features/data/datasources/doctor_remote_data_source.dart';
import 'package:docfinder/features/domain/repositories/doctor_repository.dart';
import 'package:docfinder/features/presentation/controllers/doctor_controller.dart';
import 'package:get/get.dart';

class DoctorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorRemoteDataSource());
    Get.lazyPut(() => DoctorRepository(Get.find()));
    Get.lazyPut(() => DoctorController(Get.find()));
  }
}
