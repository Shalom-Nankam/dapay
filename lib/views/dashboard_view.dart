import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watchmap/controller/dashboard_controller.dart';
import 'package:watchmap/controller/home_screen_controller.dart';
import 'package:watchmap/views/stateless_view.dart';

class DashboardView
    extends StatelessView<DashboardScreen, DashboardController> {
  DashboardView(DashboardController state, {Key? key}) : super(state, key: key);

  final List<Widget> screens = [const HomeScreenTab()];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
          backgroundColor: Colors.white,
          tabBar: CupertinoTabBar(
              backgroundColor: Colors.white,
              activeColor: const Color(0xff090909),
              inactiveColor: const Color(0xff090909),
              items: const [
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.chart_bar)),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.creditcard)),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.person)),
              ]),
          tabBuilder: (context, index) {
            return CupertinoTabView(
              builder: (context) => screens[index],
            );
          }),
    );
  }
}
