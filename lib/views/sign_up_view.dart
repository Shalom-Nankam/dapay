import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:watchmap/controller/sign_up_controller.dart';
import 'package:watchmap/controller/verify_identitiy_controller.dart';
import 'package:watchmap/widgets/custom_button.dart';
import 'package:watchmap/widgets/custom_text.dart';
import 'package:watchmap/widgets/custom_textfield.dart';

import 'stateless_view.dart';

class SignUpView extends StatelessView<SignUpScreen, SignUpController> {
  const SignUpView(SignUpController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Padding(
      padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 31.w),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 199.h,
              ),
              const CustomText(
                  text: 'Sign Up',
                  color: Color(0xff111827),
                  size: 38,
                  weight: FontWeight.w600),
              SizedBox(
                height: 35.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomButton(
                      title: const Icon(
                        FontAwesomeIcons.google,
                        color: Color(0xff004852),
                      ),
                      radius: 12,
                      color: const Color(0xffF5F5F5),
                      action: () {},
                      height: 57,
                      width: 165),
                  SizedBox(
                    width: 19.w,
                  ),
                  CustomButton(
                      title: const Icon(
                        FontAwesomeIcons.apple,
                        color: Color(0xff004852),
                      ),
                      radius: 12,
                      color: const Color(0xffF5F5F5),
                      action: () {},
                      height: 57,
                      width: 165),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              const CustomText(
                  text: 'OR',
                  color: Color(0xffcbcbcb),
                  size: 18,
                  weight: FontWeight.w500),
              SizedBox(
                height: 32.h,
              ),
              const CustomTextfield(
                  fieldPrefix: Icon(
                    CupertinoIcons.person,
                    color: Color(0xffcbcbcb),
                  ),
                  fieldHint: 'FULL NAME',
                  obscureField: false),
              SizedBox(
                height: 22.h,
              ),
              const CustomTextfield(
                  fieldPrefix: Icon(
                    CupertinoIcons.mail,
                    color: Color(0xffcbcbcb),
                  ),
                  fieldHint: 'EMAIL',
                  obscureField: false),
              SizedBox(
                height: 22.h,
              ),
              const CustomTextfield(
                  fieldPrefix: Icon(
                    CupertinoIcons.lock,
                    color: Color(0xffcbcbcb),
                  ),
                  fieldHint: 'PASSWORD',
                  obscureField: true),
              SizedBox(
                height: 35.h,
              ),
              CustomButton(
                  height: 67,
                  width: 344,
                  title: const CustomText(
                    text: 'SIGN UP',
                    color: Color(0xff111827),
                    size: 16,
                    weight: FontWeight.w600,
                    align: TextAlign.center,
                  ),
                  radius: 13,
                  action: () => Get.to(() => const VerifyIdentityScreen())),
              SizedBox(
                height: 21.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CustomText(
                    text: 'Already have an account?',
                    color: Color(0xff111827),
                    size: 17,
                    weight: FontWeight.w400,
                    align: TextAlign.center,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  GestureDetector(
                    child: const CustomText(
                      text: 'Log in',
                      color: Color(0xff111827),
                      size: 17,
                      weight: FontWeight.w700,
                      align: TextAlign.center,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
