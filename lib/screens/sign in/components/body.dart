import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prototype/constraints.dart';
import 'package:prototype/screens/forgot%20%20password/forgot_password.dart';
import 'package:prototype/screens/sign%20in/components/sign_form.dart';
import 'package:prototype/sizeconfig.dart';

import '../../../components/no_acccount.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight*0.04,),
              Text("Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  )),
              const Text(
                "Sign in with your email and password \n or continue with google",
                textAlign: TextAlign.center,
              ),
              SizedBox(height:SizeConfig.screenHeight*0.08),
              SignForm(),
              SizedBox(height:SizeConfig.screenHeight*0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialWidget(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  socialWidget(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  socialWidget(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(16),),
              NoAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}



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
