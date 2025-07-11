import 'package:docfinder/core/constants/app_assets.dart';
import 'package:docfinder/core/constants/app_colors.dart';
import 'package:docfinder/features/presentation/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(AppAssets.logo),
          ),
          const Text(
            "DOCFINDER",
            style: TextStyle(
              color: AppColors.black,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
