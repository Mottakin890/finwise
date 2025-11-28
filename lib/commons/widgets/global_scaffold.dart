import 'package:finwise/commons/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalScaffold extends StatelessWidget {
  final bool? centerTitle;
  final double expandedHeight;
  final String title;
  final Widget? child;
  final bool isScrollable;
  const GlobalScaffold({
    super.key,
    this.title = '',
    this.centerTitle,
    required this.expandedHeight,
    required this.isScrollable,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Fixed AppBar (doesn't scroll at all)
          Container(
            height: expandedHeight,
            width: double.infinity,
            color: AppColors.primaryColor,
            child: SafeArea(
              bottom: false,
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryTextColor,
                    fontSize: 36.sp,
                  ),
                ),
              ),
            ),
          ),

          // Scrollable content
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.lightBgColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70.r),
                  topRight: Radius.circular(70.r),
                ),
              ),
              child: isScrollable
                  ? child
                  : SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: child,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
