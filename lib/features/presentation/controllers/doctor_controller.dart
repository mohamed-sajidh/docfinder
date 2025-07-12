import 'package:docfinder/features/domain/entity/doctor_entity.dart';
import 'package:docfinder/features/domain/repositories/doctor_repository.dart';
import 'package:get/get.dart';

class DoctorController extends GetxController {
  final DoctorRepository repository;

  DoctorController(this.repository);

  var doctors = <DoctorEntity>[].obs;
  final allDoctors = <DoctorEntity>[].obs;
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
      allDoctors.value = data;
      doctors.value = data;
    } catch (e) {
      print("e => $e");
    } finally {
      isLoading(false);
    }
  }

  void filterByGender(String gender) {
    doctors.value = allDoctors
        .where((doc) => doc.gender.toLowerCase() == gender.toLowerCase())
        .toList();
  }

  void resetFilter() {
    doctors.value = allDoctors;
  }
}
