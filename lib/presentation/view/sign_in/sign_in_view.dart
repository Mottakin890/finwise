import 'package:finwise/commons/app_assets/app_assets.dart';
import 'package:finwise/commons/dimentions/app_spacings.dart';
import 'package:finwise/commons/routes/app_routes.dart';
import 'package:finwise/commons/themes/app_colors.dart';
import 'package:finwise/commons/widgets/global_scaffold.dart';
import 'package:finwise/commons/widgets/input_field.dart';
import 'package:finwise/presentation/view/auth_page/helper/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus,
      child: GlobalScaffold(
        isScrollable: false,
        expandedHeight: 180.h,
        centerTitle: true,
        title: 'Welcome',
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              AppSpacings.vertical(100),
              RPadding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: InputField(
                  controller: _emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  hintText: 'example@example.com',
                  label: 'Email',
                  maxLines: 1,
                ),
              ),
              AppSpacings.vertical(25),
              RPadding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: InputField(
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  hintText: 'password',
                  label: 'Password',
                  maxLines: 1,
                ),
              ),
              AppSpacings.vertical(5),
              RPadding(
                padding: const EdgeInsets.only(right: 40.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontWeight: .bold,
                        color: AppColors.primaryTextColor,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ),
              ),
              AppSpacings.vertical(60),
              Center(
                child: AuthButton(
                  buttonColor: AppColors.primaryColor,
                  text: 'Log In',
                ),
              ),
              AppSpacings.vertical(30),
              Center(
                child: Text(
                  'or continue with',
                  style: TextStyle(fontSize: 13.sp, fontWeight: .w300),
                ),
              ),
              AppSpacings.vertical(15),
              Center(
                child: SizedBox(
                  width: 100.w,
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(AppAssets.facebookLogo),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(AppAssets.googleLogo),
                      ),
                    ],
                  ),
                ),
              ),
              AppSpacings.vertical(60),
              Align(
                alignment: .bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.signUpPage);
                  },
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: AppColors.primaryTextColor,
                        fontWeight: .w300,
                        fontSize: 13.sp,
                      ),
                      text: "Don't have any account? ",
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                            fontWeight: .bold,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
