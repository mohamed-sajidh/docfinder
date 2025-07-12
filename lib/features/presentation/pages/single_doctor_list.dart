import 'package:docfinder/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleDoctorList extends StatelessWidget {
  const SingleDoctorList({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 210,
            color: AppColors.grey,
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dr.Anagha akkru",
                          style: TextStyle(
                            color: AppColors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          "Female",
                          style: TextStyle(
                            color: AppColors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "pediatriacian",
                      style: TextStyle(
                        color: AppColors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 20),
                    timeandLocation("Time", "10-29-2929"),
                    const SizedBox(height: 5),
                    timeandLocation("Location", "Palakkad"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget timeandLocation(String key, String value) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "$key:",
        style: const TextStyle(
          color: AppColors.black,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
      Text(
        value,
        style: const TextStyle(
          color: AppColors.black,
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
      ),
    ],
  );
}
