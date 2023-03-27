import 'package:flutter/material.dart';
import 'package:prototype/routes.dart';
import 'package:prototype/screens/splash/splash_screen.dart';
import 'package:prototype/theme.dart';

import 'constraints.dart';

void main() {
  runApp(const Prototype());
}

class Prototype extends StatelessWidget {
  const Prototype({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: Splashscreen.routeName,
      routes: routes,
    );
  }
}

