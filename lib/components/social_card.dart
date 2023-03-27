import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../sizeconfig.dart';

class socialWidget extends StatelessWidget {
  const socialWidget({
    super.key,
    required this.icon,
    required this.press,
  });
  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          margin:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(12)),
          height: getProportionateScreenHeight(40),
          width: getProportionateScreenWidth(40),
          decoration:
              BoxDecoration(color: Color(0xFFF56F9), shape: BoxShape.circle),
          child: SvgPicture.asset(icon)),
    );
  }
}
