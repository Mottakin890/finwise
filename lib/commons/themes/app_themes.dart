import 'package:finwise/commons/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData getLightTheme() => ThemeData().copyWith(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.lightBgColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.primaryColor),
  );
}