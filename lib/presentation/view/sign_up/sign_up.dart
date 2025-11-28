import 'package:finwise/commons/dimentions/app_spacings.dart';
import 'package:finwise/commons/routes/app_routes.dart';
import 'package:finwise/commons/themes/app_colors.dart';
import 'package:finwise/commons/widgets/global_scaffold.dart';
import 'package:finwise/commons/widgets/input_field.dart';
import 'package:finwise/presentation/view/auth_page/helper/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: GlobalScaffold(
        expandedHeight: 180.h,
        isScrollable: false,
        centerTitle: true,
        title: 'Create Account',
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              AppSpacings.vertical(40),
              RPadding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: InputField(
                  controller: _nameController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  hintText: 'John Doe',
                  label: 'Full Name',
                  maxLines: 1,
                ),
              ),
              AppSpacings.vertical(20),
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

              AppSpacings.vertical(20),
              RPadding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: InputField(
                  controller: _numberController,
                  keyboardType: TextInputType.numberWithOptions(
                    signed: true,
                    decimal: true,
                  ),
                  obscureText: false,
                  hintText: '+ 123 456 789',
                  label: 'Number',
                  maxLines: 1,
                ),
              ),
              AppSpacings.vertical(20),
              RPadding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: InputField(
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  hintText: '*********',
                  label: 'Password',
                  maxLines: 1,
                ),
              ),
              AppSpacings.vertical(30),
              GestureDetector(
                onTap: () {},
                child: Center(
                  child: RichText(
                    textAlign: .center,
                    text: TextSpan(
                      text: 'By continuing, you agree to\n',
                      style: TextStyle(
                        color: AppColors.primaryTextColor,
                        fontSize: 13.sp,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Terms of Use ',
                          style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontSize: 13.sp,
                            fontWeight: .bold,
                          ),
                        ),
                        TextSpan(text: 'and '),
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontSize: 13.sp,
                            fontWeight: .bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              AppSpacings.vertical(15),
              GestureDetector(
                onTap: () {},
                child: Center(
                  child: AuthButton(
                    buttonColor: AppColors.primaryColor,
                    text: 'Sign Up',
                  ),
                ),
              ),
              AppSpacings.vertical(20),
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.signInPage);
                },
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(
                        color: AppColors.primaryTextColor,
                        fontSize: 13.sp,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Log In',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 13.sp,
                            fontWeight: .bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              AppSpacings.vertical(5),
            ],
          ),
        ),
      ),
    );
  }
}
