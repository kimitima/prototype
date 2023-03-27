import 'package:flutter/material.dart';
import 'package:prototype/screens/Sign%20Up/components/Body.dart';
import 'package:prototype/sizeconfig.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  static String routeName ="sign_up";
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Sign Up'),
      ),
      body: Body()
    );
  }
}