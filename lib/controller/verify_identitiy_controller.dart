import 'package:flutter/cupertino.dart';
import 'package:watchmap/views/verify_identity_view.dart';

class VerifyIdentityScreen extends StatefulWidget {
  const VerifyIdentityScreen({super.key});

  @override
  State<VerifyIdentityScreen> createState() => VerifyIdentityController();
}

class VerifyIdentityController extends State<VerifyIdentityScreen> {
  @override
  Widget build(BuildContext context) {
    return VerifyIdentityView(this);
  }
}
