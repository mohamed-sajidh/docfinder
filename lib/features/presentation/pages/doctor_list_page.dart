import 'package:docfinder/core/constants/app_colors.dart';
import 'package:docfinder/features/presentation/widgets/doctor_card.dart';
import 'package:flutter/material.dart';

class DoctorListPage extends StatefulWidget {
  const DoctorListPage({super.key});

  @override
  State<DoctorListPage> createState() => _DoctorListPageState();
}

class _DoctorListPageState extends State<DoctorListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        centerTitle: true,
        leading: const Icon(
          Icons.format_list_bulleted_sharp,
          color: AppColors.white,
          size: 25,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: ListView.separated(
          itemBuilder: (context, index) => const DoctorCard(),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 50,
        ),
      ),
    );
  }
}
