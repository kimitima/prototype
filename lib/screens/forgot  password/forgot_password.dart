import 'package:flutter/material.dart';
import 'package:prototype/screens/forgot%20%20password/components/body.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});
  static String routeName ="/forgot_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),
      body: body(),
    );
  }
}