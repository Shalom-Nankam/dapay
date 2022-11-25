import 'package:flutter/cupertino.dart';
import 'package:watchmap/controller/sign_up_controller.dart';

import 'stateless_view.dart';

class SignUpView extends StatelessView<SignUpScreen, SignUpController> {
  const SignUpView(SignUpController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: SafeArea(
      child: SingleChildScrollView(
        child: Column(),
      ),
    ));
  }
}
