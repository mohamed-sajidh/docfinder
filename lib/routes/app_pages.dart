import 'package:docfinder/features/presentation/bindings/doctor_binding.dart';
import 'package:docfinder/features/presentation/bindings/single_doctorlist_binding.dart';
import 'package:docfinder/features/presentation/bindings/splash_binding.dart';
import 'package:docfinder/features/presentation/pages/doctor_list_page.dart';
import 'package:docfinder/features/presentation/pages/single_doctor_list.dart';
import 'package:docfinder/features/presentation/pages/splash_screen.dart';
import 'package:docfinder/routes/app_routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.doctorList,
      page: () => const DoctorListPage(),
      binding: DoctorBinding(),
    ),
    GetPage(
      name: AppRoutes.singleDoctorList,
      page: () => const SingleDoctorList(),
      binding: SingleDoctorlistBinding(),
    ),
  ];
}
