import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.radius,
      this.color,
      required this.action});
  final Widget title;
  final double radius;
  final Color? color;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: action,
      color: color ?? const Color(0xffE8F54A),
      padding: const EdgeInsets.all(0),
      borderRadius: BorderRadius.circular(radius).r,
      child: title,
    );
  }
}
