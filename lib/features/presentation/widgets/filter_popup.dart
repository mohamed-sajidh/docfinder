import 'package:docfinder/core/constants/app_colors.dart';
import 'package:docfinder/features/presentation/controllers/doctor_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum Gender { male, female }

void showCustomDialog(BuildContext context) {
  Gender? selectedGender = Gender.male;

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            backgroundColor: AppColors.white,
            scrollable: true,
            title: const Center(
              child: Text(
                'Filter by',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            content: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Gender',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Row(
                          children: [
                            Radio<Gender>(
                              value: Gender.male,
                              groupValue: selectedGender,
                              onChanged: (Gender? value) {
                                setState(() {
                                  selectedGender = value;
                                });
                              },
                            ),
                            const Text('Male'),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Row(
                          children: [
                            Radio<Gender>(
                              value: Gender.female,
                              groupValue: selectedGender,
                              onChanged: (Gender? value) {
                                setState(() {
                                  selectedGender = value;
                                });
                              },
                            ),
                            const Text('Female'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      final doctorController = Get.find<DoctorController>();
                      doctorController.resetFilter();
                      Get.back();
                    },
                    child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.grey,
                      ),
                      child: const Center(
                        child: Text(
                          "RESET",
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // ✅ SUBMIT Button
                  GestureDetector(
                    onTap: () {
                      final doctorController = Get.find<DoctorController>();
                      doctorController.filterByGender(
                        selectedGender == Gender.male ? "Male" : "Female",
                      );
                      Get.back();
                    },
                    child: Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.primary,
                      ),
                      child: const Center(
                        child: Text(
                          "SUBMIT",
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        },
      );
    },
  );
}
