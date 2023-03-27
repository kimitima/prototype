import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../sizeconfig.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon(String s, {
    super.key,
    required this.svgIcon, required String SvgIcon,
  });
  final String svgIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenHeight(18),
      ),
    );
  }
}
