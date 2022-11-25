import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.radius,
      this.color,
      required this.action,
      required this.height,
      required this.width});
  final Widget title;
  final double radius, height, width;
  final Color? color;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      width: width.w,
      child: CupertinoButton(
        onPressed: action,
        color: color ?? const Color(0xffE8F54A),
        padding: const EdgeInsets.all(0),
        borderRadius: BorderRadius.circular(radius).r,
        child: title,
      ),
    );
  }
}
