import 'package:docfinder/core/constants/app_colors.dart';
import 'package:docfinder/features/presentation/controllers/single_doctorlist_controller.dart';
import 'package:docfinder/features/presentation/widgets/doctor_details_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleDoctorList extends GetView<SingleDoctorlistController> {
  const SingleDoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    final String doctorId = Get.arguments;
    controller.fetchDoctorsById(doctorId);

    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        leading: InkWell(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back_rounded,
            color: AppColors.white,
            size: 25,
          ),
        ),
        title: const Text(
          "Doctor Details",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.doctorDetails.value == null) {
          return const Center(child: Text("No Doctor Data"));
        }

        final doctor = controller.doctorDetails.value!;

        return Column(
          children: [
            Container(
              width: double.infinity,
              height: 210,
              color: AppColors.black,
              child: Image.network(
                doctor.image,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dr. ${doctor.name}",
                            style: const TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            doctor.gender,
                            style: const TextStyle(
                              color: AppColors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        doctor.department,
                        style: const TextStyle(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 20),
                      timeandLocation("Time", doctor.time),
                      const SizedBox(height: 5),
                      timeandLocation("Location", doctor.location),
                      const Spacer(),
                      customButton()
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
