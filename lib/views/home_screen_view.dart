import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watchmap/controller/home_screen_controller.dart';
import 'package:watchmap/widgets/custom_notifications.dart';
import 'package:watchmap/widgets/custom_text.dart';
import 'package:watchmap/widgets/user_icon.dart';

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
                      BoxShadow(color: Color(0xff003840), offset: Offset(0, 10))
                    ],
                    borderRadius: BorderRadius.circular(20).r,
                    color: const Color(0xff004852)),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 15.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100).r,
                        color: const Color(0xff004852)),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    height: 15.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100).r,
                        color: const Color(0xffD2D2D2)),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    height: 15.h,
                    width: 15.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100).r,
                        color: const Color(0xffd2d2d2)),
                  ),
                ],
              ),
              SizedBox(
                height: 19.h,
              ),
              const CustomText(
                  text: 'Total balance',
                  color: Color(0xffa5a5a5),
                  size: 21,
                  weight: FontWeight.w600),
              SizedBox(
                height: 8.h,
              ),
              const CustomText(
                  text: '\$ 13,553.00',
                  color: Color(0xff0d0d0d),
                  size: 36,
                  weight: FontWeight.w600),
              SizedBox(
                height: 30.h,
              ),
              const CustomText(
                  text: 'Recepients',
                  color: Color(0xff111827),
                  size: 21,
                  weight: FontWeight.w600),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                height: 62.h,
                width: 350.w,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    UserIcon(
                        imageIcon: Image.asset(
                      'assets/images/user1.png',
                      fit: BoxFit.none,
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
