import 'package:finwise/commons/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashVm extends GetxController {
  @override
  void onInit() {
    _checkings();
    super.onInit();
  }

  void _checkings()async{
    await Future.delayed(const Duration(seconds: 2));
    Get.offNamed(AppRoutes.authPage);
  }
}