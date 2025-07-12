import 'package:docfinder/features/data/datasources/doctor_remote_data_source.dart';
import 'package:docfinder/features/domain/repositories/doctor_repository.dart';
import 'package:docfinder/features/presentation/controllers/single_doctorlist_controller.dart';
import 'package:get/get.dart';

class SingleDoctorlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorRemoteDataSource());
    Get.lazyPut(() => DoctorRepository(Get.find()));
    Get.lazyPut(() => SingleDoctorlistController(Get.find()));
  }
}
