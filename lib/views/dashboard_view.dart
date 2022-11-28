import 'package:flutter/cupertino.dart';
import 'package:watchmap/controller/dashboard_controller.dart';
import 'package:watchmap/views/stateless_view.dart';

class DashboardView
    extends StatelessView<DashboardScreen, DashboardController> {
  DashboardView(DashboardController state, {Key? key}) : super(state, key: key);

  final List<Widget> screens = [];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(items: const []),
          tabBuilder: (context, index) {
            return CupertinoTabView(
              builder: (context) => screens[index],
            );
          }),
    );
  }
}
