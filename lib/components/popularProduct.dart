import 'package:flutter/material.dart';
import 'package:prototype/components/product_card.dart';
import 'package:prototype/screens/details/detailsScreen.dart/details_screen.dart';

import '../models/Product.dart';
import '../screens/HomeScreen/body/sectionTitle.dart';
import '../sizeconfig.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          press: () {},
          text: ' Popular Product',
          title: '',
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                      product: demoProducts[index],
                      press: () => Navigator.pushNamed(
                          context, DetailsScreen.routeName,
                          arguments: ProductDetailsArguments(
                              product: demoProducts[index])),
                    )),
            SizedBox(
              width: getProportionateScreenWidth(20),
            )
          ]),
        ),
      ],
    );
  }
}
