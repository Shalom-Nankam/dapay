import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watchmap/controller/onboard_controller.dart';
import 'package:watchmap/views/stateless_view.dart';
import 'package:watchmap/widgets/custom_button.dart';
import 'package:watchmap/widgets/custom_text.dart';

class OnboardView extends StatelessView<OnboardScreen, OnboardController> {
  const OnboardView(OnboardController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Padding(
      padding: EdgeInsets.fromLTRB(36.w, 79.h, 19.w, 54.h),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SvgPicture.asset('assets/images/onboard.svg'),
              SizedBox(
                height: 84.h,
              ),
              SizedBox(
                height: 251.h,
                width: 344.w,
                child: Column(
                  children: [
                    const CustomText(
                      text: 'Virtual Payments Via Cards',
                      color: Color(0xff111827),
                      size: 36,
                      weight: FontWeight.w700,
                      align: TextAlign.center,
                    ),
                    SizedBox(
                      height: 43.h,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          CupertinoIcons.arrow_right,
                          color: const Color(0xff111827),
                          size: 19.w,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        const CustomText(
                          text: 'Payments',
                          color: Color(0xff111827),
                          size: 16,
                          weight: FontWeight.w500,
                          align: TextAlign.center,
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        Icon(
                          CupertinoIcons.arrow_right,
                          color: const Color(0xff111827),
                          size: 19.w,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        const CustomText(
                          text: 'Virtual Card',
                          color: Color(0xff111827),
                          size: 16,
                          weight: FontWeight.w500,
                          align: TextAlign.center,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 159.h,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 56.h,
                    width: 85.w,
                    child: CustomButton(
                        title: const CustomText(
                          text: 'SKIP',
                          color: Color(0xff111827),
                          size: 16,
                          weight: FontWeight.w500,
                          align: TextAlign.center,
                        ),
                        radius: 13,
                        color: const Color(0xffEFEFEF),
                        action: () {}),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 56.h,
                    width: 152.w,
                    child: CustomButton(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CustomText(
                              text: 'NEXT',
                              color: Color(0xff111827),
                              size: 16,
                              weight: FontWeight.w600,
                              align: TextAlign.center,
                            ),
                            SizedBox(
                              width: 21.w,
                            ),
                            const Icon(
                              CupertinoIcons.arrow_right,
                              color: Color(0xff0D0D0D),
                            )
                          ],
                        ),
                        radius: 13,
                        action: () {}),
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
