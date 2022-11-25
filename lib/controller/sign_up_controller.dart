import 'package:flutter/cupertino.dart';
import 'package:watchmap/views/sign_up_view.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => SignUpController();
}

class SignUpController extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SignUpView(this);
  }
}
