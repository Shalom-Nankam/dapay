import 'package:flutter/cupertino.dart';
import 'package:watchmap/views/dashboard_view.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => DashboardController();
}

class DashboardController extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return DashboardView(this);
  }
}
