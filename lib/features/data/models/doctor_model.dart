import 'package:docfinder/features/domain/entity/doctor_entity.dart';

class DoctorModel extends DoctorEntity {
  DoctorModel({
    required super.id,
    required super.name,
    required super.image,
    required super.gender,
    required super.time,
    required super.location,
    required super.department,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      image: json['image'] ?? "",
      gender: json['gender'] ?? "",
      time: json['time'] ?? "",
      location: json['location'] ?? "",
      department: json['department'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'gender': gender,
      'time': time,
      'location': location,
      'department': department,
    };
  }
}
