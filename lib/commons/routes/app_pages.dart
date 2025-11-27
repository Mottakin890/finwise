import 'package:finwise/commons/routes/app_routes.dart';
import 'package:finwise/presentation/view/auth_page/auth_view.dart';
import 'package:finwise/presentation/view/splash/splash.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.splash, page: () => const Splash()),
    GetPage(name: AppRoutes.authPage, page: () => const AuthView()),
  ];
}
