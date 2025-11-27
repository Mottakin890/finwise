import 'package:finwise/commons/routes/app_pages.dart';
import 'package:finwise/commons/routes/app_routes.dart';
import 'package:finwise/commons/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((
    _,
  ) {
    runApp(
      ScreenUtilInit(
        designSize: Size(375, 812),
        splitScreenMode: true,
        minTextAdapt: true,
        child: FinWiseApp(),
      ),
    );
  });
}

class FinWiseApp extends StatelessWidget {
  const FinWiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      getPages: AppPages.pages,
      initialRoute: AppRoutes.splash,
      theme: AppThemes.getLightTheme(),
    );
  }
}
