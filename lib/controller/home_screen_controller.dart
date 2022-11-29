import 'package:flutter/cupertino.dart';
import 'package:watchmap/views/home_screen_view.dart';

class HomeScreenTab extends StatefulWidget {
  const HomeScreenTab({super.key});

  @override
  State<HomeScreenTab> createState() => HomeScreenController();
}

class HomeScreenController extends State<HomeScreenTab> {
  @override
  Widget build(BuildContext context) {
    return HomeScreenView(this);
  }
}
