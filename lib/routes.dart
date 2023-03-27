import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prototype/screens/HomeScreen/HomeScreen.dart';
import 'package:prototype/screens/Loginsuccess/Login_successScreen.dart';
import 'package:prototype/screens/cart/cardCardScreen.dart';
import 'package:prototype/screens/details/detailsScreen.dart/details_screen.dart';
import 'package:prototype/screens/forgot%20%20password/forgot_password.dart';
import 'package:prototype/screens/sign%20in/SignInScreen.dart';


import 'screens/Sign Up/SignUp.dart';
import 'screens/splash/splash_screen.dart';
final Map<String, WidgetBuilder> routes = {
  Splashscreen.routeName:(context) => const Splashscreen(),
  SignInScreen.routeName:(context) => const SignInScreen(),
  ForgotPassword.routeName:(context) => const ForgotPassword(),
  SignUpPage.routeName:(context) => const SignUpPage(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  HomePAge.routname: (comtext) => const HomePAge(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName:(context) => CartScreen(),
  


    
  };
  
 
