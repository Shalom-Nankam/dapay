import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watchmap/widgets/custom_text.dart';

class VerifyStep extends StatelessWidget {
  const VerifyStep(
      {super.key,
      required this.icon,
      required this.title,
      required this.description});

  final Widget icon;
  final String title, description;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 30.w,
        ),
        Container(
          height: 39.h,
          width: 39.w,
          decoration: BoxDecoration(
              color: const Color(0xffeff4f6),
              borderRadius: BorderRadius.circular(100).r),
          child: Center(child: icon),
        ),
        SizedBox(
          width: 30.w,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
                text: title,
                color: const Color(0xff323142),
                size: 18,
                weight: FontWeight.w600),
            SizedBox(
              height: 40.h,
              width: 192.w,
              child: CustomText(
                  text: description,
                  color: const Color(0xffacadb9),
                  size: 14,
                  weight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
  }
}
