import 'package:flutter/material.dart';
import 'package:prototype/screens/forgot%20%20password/forgot_password.dart';

import '../constraints.dart';
import '../screens/Sign Up/SignUp.dart';
import '../sizeconfig.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding( 
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            " Don't have an account",
            style: TextStyle(fontSize: getProportionateScreenWidth(16)
    ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, SignUpPage.routeName);
            },
            child: Text(
              " Sign Up",
              style: TextStyle(fontSize: getProportionateScreenWidth(16),
              color: kPrimaryColor),
            ),
          )
        ],
      ),  
    );
  }
}