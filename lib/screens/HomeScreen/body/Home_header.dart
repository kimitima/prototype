import 'package:flutter/material.dart';
import 'package:prototype/screens/HomeScreen/body/icon_btn_with_counter.dart';
import 'package:prototype/screens/HomeScreen/body/searchField.dart';

import '../../../sizeconfig.dart';
import '../../cart/cardCardScreen.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Cart Icon.svg',
            press: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
            numOfItems: 3,
          ), 
          IconBtnWithCounter(
            svgSrc: 'assets/icons/Bell.svg',
            press: () {},
            numOfItems: 3,
          ),
        ],
      ),
    );
  }
}

