import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watchmap/controller/sign_up_controller.dart';
import 'package:watchmap/widgets/custom_text.dart';

import 'stateless_view.dart';

class SignUpView extends StatelessView<SignUpScreen, SignUpController> {
  const SignUpView(SignUpController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
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
              children: const [],
            )
          ],
        ),
      ),
    ));
  }
}
