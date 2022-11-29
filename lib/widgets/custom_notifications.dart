import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Icon(
          CupertinoIcons.bell,
          color: const Color(0xff111827),
          size: 24.w,
        ),
        Container(
          height: 9.h,
          width: 9.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100).r,
              color: const Color(0xff004852)),
        )
      ],
    );
  }
}
