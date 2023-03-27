import 'package:flutter/material.dart';

import '../../../constraints.dart';
import '../../../sizeconfig.dart';

class splashcontent extends StatelessWidget {
  const splashcontent({
    super.key,
    required this.text,
    required this.image,
  });
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'DORNS',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text('Welcome to dorns, Lets shop'),
        Spacer(
          flex: 2,
        ),
        Image.asset('assets/images/splash_1.png',
            height: getProportionateScreenHeight(265),
            width: getProportionateScreenWidth(235)),
      ],
    );
  }
}