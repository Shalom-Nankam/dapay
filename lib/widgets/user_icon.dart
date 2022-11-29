import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserIcon extends StatelessWidget {
  const UserIcon({super.key, required this.imageIcon});

  final Widget imageIcon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      width: 60.h,
      child: Stack(
        children: [
          Positioned.fill(child: CircleAvatar(radius: 48, child: imageIcon)),
          Positioned(
            bottom: 0.h,
            right: 0.h,
            child: FractionalTranslation(
              translation: const Offset(0.3, -0.3),
              child: Container(
                height: 9.h,
                width: 9.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100).r,
                    color: const Color(0xff004852)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
