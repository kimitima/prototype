import 'package:flutter/material.dart';
import 'package:prototype/sizeconfig.dart';

import 'components/body.dart';

class Splashscreen extends StatelessWidget {
  static String routeName = "/splash";
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}