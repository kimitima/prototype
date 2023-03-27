import 'package:flutter/material.dart';
import 'package:prototype/screens/HomeScreen/HomeScreen.dart';

import '../../../components/default_button.dart';
import '../../../sizeconfig.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        SizedBox(height:SizeConfig.screenHeight*0.03),
        Image.asset("assets/images/success.png",
        
        ),
        SizedBox(height: SizeConfig.screenHeight*0.08),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(50),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth *0.6,
          child: DefaultButton(
            text:" back to homepage",
            press: () => Navigator.pushNamed(context, HomePAge.routname) ,
          ),
        ),
        Spacer(),
      ],
      
    );
  }
}