import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButton extends StatelessWidget {
  final Color buttonColor;
  final String text;
  const AuthButton({super.key, required this.buttonColor, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 207.w,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontWeight: .w600, fontSize: 17.sp),
        ),
      ),
    );
  }
}
