import 'package:finwise/commons/app_assets/app_assets.dart';
import 'package:finwise/commons/dimentions/app_spacings.dart';
import 'package:finwise/commons/routes/app_routes.dart';
import 'package:finwise/commons/themes/app_colors.dart';
import 'package:finwise/presentation/view/auth_page/helper/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            SvgPicture.asset(
              AppAssets.svgLogo,
              // colorFilter: ColorFilter.mode(
              //   AppColors.primaryColor,
              //   BlendMode.srcIn,
              // ),
              height: 80.h,
              width: 80.w,
              fit: BoxFit.fill,
            ),

            // AppSpacings.vertical(10),
            Text(
              'FinWise',
              style: TextStyle(
                fontSize: 40.sp,
                fontWeight: .w600,
                color: AppColors.primaryColor,
              ),
            ),
            RPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Please sign up or log in to proceed.',
                textAlign: .center,
              ),
            ),
            AppSpacings.vertical(30),

            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.signInPage);
              },
              child: AuthButton(
                buttonColor: AppColors.primaryColor,
                text: 'Log In',
              ),
            ),
            AppSpacings.vertical(10),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.signUpPage);
              },
              child: AuthButton(
                buttonColor: AppColors.lightGreen,
                text: 'Sign Up',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
