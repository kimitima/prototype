import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constraints.dart';
import '../../../sizeconfig.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    super.key,
    required this.svgSrc,
    required this.numOfItems,
    required this.press,
  });
  final String svgSrc;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) { 
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                shape: BoxShape.circle),
            child: SvgPicture.asset(svgSrc),
          ),
          if(numOfItems !=0)
          Positioned(
            top: -3,
            right: 0,
            child: Container(
              height: getProportionateScreenWidth(16),
              width: getProportionateScreenWidth(16),
              decoration: BoxDecoration(
                color: Color(0xFFFF4848),
                shape: BoxShape.circle,
                border: Border.all(width: 1.0, color: Colors.white),
              ),
              child: Center(
                child: Text("$numOfItems",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
