import 'package:docfinder/routes/app_pages.dart';
import 'package:docfinder/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DocFinder',
      initialRoute: AppRoutes.splash,
      getPages: AppPages.routes,
    );
  }
}
