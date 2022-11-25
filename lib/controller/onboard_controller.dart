import 'package:flutter/cupertino.dart';
import 'package:watchmap/views/onboard_view.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => OnboardController();
}

class OnboardController extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return OnboardView(this);
  }
}
