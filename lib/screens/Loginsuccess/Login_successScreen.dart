import 'package:flutter/material.dart';
import 'package:prototype/screens/Loginsuccess/components/body.dart';

class LoginSuccessScreen extends StatefulWidget {
  const LoginSuccessScreen({super.key});
  static String routeName ="/login_success";

  @override
  State<LoginSuccessScreen> createState() => _LoginSuccessScreenState();
}

class _LoginSuccessScreenState extends State<LoginSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
      ),
      body: Body(),
    );
  }
}