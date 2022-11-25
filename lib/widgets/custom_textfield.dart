import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield(
      {super.key,
      required this.fieldPrefix,
      required this.fieldHint,
      required this.obscureField});

  final Widget fieldPrefix;
  final String fieldHint;
  final bool obscureField;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
          color: const Color(0xfff5f5f5),
          borderRadius: BorderRadius.circular(12).r),
      height: 67.h,
      width: 344.w,
      child: CupertinoTextField(
        obscureText: obscureField,
        prefix: Row(
          children: [
            fieldPrefix,
            SizedBox(
              width: 20.w,
            )
          ],
        ),
        placeholder: fieldHint,
        placeholderStyle: GoogleFonts.poppins(
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xffcbcbcb)),
        // suffix: obscureField
        //     ? CupertinoB(
        //         onPressed: () {}, icon: const Icon(CupertinoIcons.eye_slash))
        //     : IconButton(
        //         onPressed: () {}, icon: const Icon(CupertinoIcons.eye_slash)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12).r,
        ),
        // decoration: InputDecoration(
        //   border: InputBorder.none,
        //   fillColor: const Color(0xfff5f5f5),
        //   filled: true,
        //   enabledBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(12).r,
        //   ),
        // ),
      ),
    );
  }
}
