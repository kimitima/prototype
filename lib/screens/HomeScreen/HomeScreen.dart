import 'package:flutter/material.dart';
import 'package:prototype/screens/HomeScreen/body/body.dart';
import 'package:prototype/theme.dart';

class HomePAge extends StatefulWidget {
  const HomePAge({super.key});
  static String routname ="/home";

  @override
  State<HomePAge> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Body(),
    );
  }
}