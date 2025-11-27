import 'package:finwise/commons/app_assets/app_assets.dart';
import 'package:finwise/commons/dimentions/app_spacings.dart';
import 'package:finwise/commons/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            SvgPicture.asset(
              AppAssets.svgLogo,
              fit: BoxFit.fill,
              height: 80.h,
              width: 80.w,
              colorFilter: ColorFilter.mode(
                AppColors.primaryTextColor,
                BlendMode.srcIn,
              ),
            ),
            AppSpacings.vertical(8),
            Text(
              'FinWise',
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: .w600,
                color: AppColors.whiteTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
