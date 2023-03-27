import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prototype/constraints.dart';
import 'package:prototype/constraints.dart';
import 'package:prototype/screens/HomeScreen/body/SpecialOffers.dart';
import 'package:prototype/screens/HomeScreen/body/sectionTitle.dart';
import 'package:prototype/sizeconfig.dart';

import '../../../components/popularProduct.dart';
import '../../../components/product_card.dart';
import '../../../constraints.dart';
import '../../../models/Product.dart';
import 'Categories.dart';
import 'Discount_banner.dart';
import 'Home_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(children: [
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        HomeHeader(),
        SizedBox(height: getProportionateScreenWidth(30)),
        DiscountBanner(),
        SizedBox(height: getProportionateScreenWidth(30)),
        Categories(),
        SizedBox(height: getProportionateScreenWidth(20)),
        SpecialOffers(),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ), 
        
        // ignore: prefer_const_constructors
        PopularProduct() ,
        SizedBox(
          height: getProportionateScreenWidth(20),
        ), 
      ])),
    );
  }
}



