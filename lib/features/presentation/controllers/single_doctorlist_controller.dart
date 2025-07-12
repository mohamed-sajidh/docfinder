import 'package:docfinder/features/domain/entity/doctor_entity.dart';
import 'package:docfinder/features/domain/repositories/doctor_repository.dart';
import 'package:get/get.dart';

class SingleDoctorlistController extends GetxController {
  final DoctorRepository repository;

  SingleDoctorlistController(this.repository);

  var doctorDetails = Rxn<DoctorEntity>();
  var isLoading = false.obs;

  void fetchDoctorsById(String id) async {
    try {
      isLoading(true);
      final data = await repository.fetchDoctorsById(id);
      doctorDetails.value = data;
    } catch (e) {
      print("e => $e");
    } finally {
      isLoading(false);
    }
  }
}
