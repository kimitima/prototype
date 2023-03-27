import 'package:flutter/material.dart';

import '../../../sizeconfig.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key, required this.text, required this.press, required String title,
  });
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)) ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      Text (text,
      style: TextStyle(
        fontSize: getProportionateScreenWidth(20),
        color: Colors.black,)
      ),
         
          GestureDetector(
          onTap: press,
          child: Text(
            "See More",
            style: TextStyle(color: Color(0xFFBBBBBB)),
          ),
        ),
        ] ) ,
    );
      ;
  } 
}



