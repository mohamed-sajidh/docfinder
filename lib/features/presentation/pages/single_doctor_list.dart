import 'package:docfinder/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleDoctorList extends StatelessWidget {
  const SingleDoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
        child: Text("welcome to Single Doctor List"),
      ),
    );
  }
}
