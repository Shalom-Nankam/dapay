import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watchmap/controller/home_screen_controller.dart';

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
            children: const [CupertinoNavigationBar()],
          ),
        ),
      ),
    );
  }
}
