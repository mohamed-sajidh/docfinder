import 'package:docfinder/core/constants/app_colors.dart';
import 'package:docfinder/features/presentation/controllers/doctor_controller.dart';
import 'package:docfinder/features/presentation/widgets/doctor_card.dart';
import 'package:docfinder/features/presentation/widgets/filter_popup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorListPage extends StatefulWidget {
  const DoctorListPage({super.key});

  @override
  State<DoctorListPage> createState() => _DoctorListPageState();
}

class _DoctorListPageState extends State<DoctorListPage> {
  final DoctorController controller = Get.find<DoctorController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            showCustomDialog(context);
          },
          child: const Icon(
            Icons.format_list_bulleted_sharp,
            color: AppColors.white,
            size: 25,
          ),
        ),
        title: const Text(
          "Doctors",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Obx(
        () {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: ListView.separated(
              itemBuilder: (context, index) => DoctorCard(
                doctors: controller.doctors[index],
              ),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: controller.doctors.length,
            ),
          );
        },
      ),
    );
  }
}
