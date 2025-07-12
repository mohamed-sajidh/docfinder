import 'package:docfinder/core/constants/app_colors.dart';
import 'package:docfinder/features/domain/entity/doctor_entity.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final DoctorEntity doctors;
  const DoctorCard({super.key, required this.doctors});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 130,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: 90,
              width: 100,
              color: AppColors.grey,
              child: Image.network(
                doctors.image, // assuming doctors.image holds the URL
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error),
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctors.name,
                    style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    doctors.department,
                    style: const TextStyle(
                      color: AppColors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    doctors.gender,
                    style: const TextStyle(
                      color: AppColors.grey,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.location_on,
                          size: 16, color: AppColors.grey),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          doctors.location,
                          style: const TextStyle(
                            color: AppColors.grey,
                            fontSize: 13,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      const Icon(Icons.access_time,
                          size: 16, color: AppColors.grey),
                      const SizedBox(width: 4),
                      Text(
                        doctors.time,
                        style: const TextStyle(
                          color: AppColors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
