import 'package:docfinder/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

Widget customButton() {
  return GestureDetector(
    onTap: () {
      Get.snackbar(
        "Coming Soon",
        "This feature will be available in the next update.",
        snackPosition: SnackPosition.TOP,
        backgroundColor: AppColors.red,
        colorText: AppColors.white,
        margin: const EdgeInsets.all(12),
        duration: const Duration(seconds: 2),
      );
    },
    child: Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.primary,
      ),
      child: const Center(
        child: Text(
          "BOOK AN APPOINMENT",
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}
