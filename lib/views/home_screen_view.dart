import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watchmap/controller/home_screen_controller.dart';
import 'package:watchmap/widgets/custom_notifications.dart';

import 'stateless_view.dart';

class HomeScreenView
    extends StatelessView<HomeScreenTab, HomeScreenController> {
  const HomeScreenView(HomeScreenController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(35.w, 45.h, 34.w, 0.h),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  RichText(
                      text: TextSpan(
                          text: 'Welcome, ',
                          style: GoogleFonts.poppins(
                              fontSize: 23.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xffcbcbcb)),
                          children: [
                        TextSpan(
                          text: 'Tom ! ',
                          style: GoogleFonts.poppins(
                              fontSize: 23.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff0d0d0d)),
                        )
                      ])),
                  const Spacer(),
                  const NotificationIcon(),
                ],
              ),
              Divider(
                color: Colors.grey.shade400,
                height: 30.h,
                thickness: 1,
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 208.h,
                width: 344.w,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff003840),
                          // blurRadius: 4,
                          // spreadRadius: 3,
                          offset: Offset(0, 10))
                    ],
                    borderRadius: BorderRadius.circular(20).r,
                    color: const Color(0xff004852)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
