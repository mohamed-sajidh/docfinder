import 'package:docfinder/features/domain/entity/doctor_entity.dart';
import 'package:docfinder/features/domain/repositories/doctor_repository.dart';
import 'package:get/get.dart';

class DoctorController extends GetxController {
  final DoctorRepository repository;

  DoctorController(this.repository);

  var doctors = <DoctorEntity>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchDoctors();
  }

  void fetchDoctors() async {
    try {
      isLoading(true);
      final data = await repository.fetchDoctors();
      doctors.value = data;
    } catch (e) {
      print("e => $e");
    } finally {
      isLoading(false);
    }
  }
}
