import 'package:docfinder/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _initSplash();
  }

  void _initSplash() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAllNamed(AppRoutes.doctorList);
  }
}
