import 'package:docfinder/features/presentation/controllers/single_doctorlist_controller.dart';
import 'package:get/get.dart';

class SingleDoctorlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SingleDoctorlistController>(() => SingleDoctorlistController());
  }
}
