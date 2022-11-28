import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:watchmap/controller/verify_identitiy_controller.dart';
import 'package:watchmap/views/stateless_view.dart';
import 'package:watchmap/widgets/custom_button.dart';
import 'package:watchmap/widgets/custom_text.dart';
import 'package:watchmap/widgets/verify_step.dart';

class VerifyIdentityView
    extends StatelessView<VerifyIdentityScreen, VerifyIdentityController> {
  const VerifyIdentityView(VerifyIdentityController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        backgroundColor: Colors.grey.shade200,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 45.h),
          child: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Icon(
                    CupertinoIcons.arrow_left,
                    color: const Color(
                      0xff1f1f1f,
                    ),
                    size: 26.w,
                  ),
                ),
                SizedBox(
                  height: 68.5.h,
                ),
                const CustomText(
                    text: 'Verify Your Identity',
                    color: Color(0xff111827),
                    size: 36,
                    weight: FontWeight.w600),
                SizedBox(
                  height: 61.h,
                ),
                SizedBox(
                  width: 344.w,
                  height: 103.h,
                  child: Card(
                    elevation: 5.h,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12).r),
                    child: const VerifyStep(
                        icon: Icon(
                          CupertinoIcons.profile_circled,
                          color: Color(0xff323142),
                        ),
                        title: 'Your Photo',
                        description:
                            'Look Straight In Your Cam For 30 Seconds '),
                  ),
                ),
                SizedBox(
                  height: 29.h,
                ),
                const VerifyStep(
                    icon: Icon(
                      CupertinoIcons.location_solid,
                      color: Color(0xff323142),
                    ),
                    title: 'Residency',
                    description:
                        'Proof Of Your Residency Via Passport / ID Card'),
                SizedBox(
                  height: 34.h,
                ),
                const VerifyStep(
                    icon: Icon(
                      CupertinoIcons.creditcard_fill,
                      color: Color(0xff323142),
                    ),
                    title: 'Scan Card',
                    description: 'Scan Your Both Sides Of Your Bank Card'),
                SizedBox(
                  height: 130.h,
                ),
                CustomButton(
                    title: const CustomText(
                      text: 'NEXT',
                      color: Color(0xff0d0d0d),
                      size: 16,
                      weight: FontWeight.w600,
                    ),
                    radius: 14,
                    action: () {},
                    height: 67,
                    width: 344)
              ],
            ),
          )),
        ));
  }
}
