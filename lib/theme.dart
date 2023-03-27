import 'package:flutter/material.dart';
import 'package:prototype/constraints.dart';

ThemeData theme(){
  return ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(255, 229, 214, 214),
        fontFamily: "Muli",
        appBarTheme:appBarTheme(),
        textTheme: textTheme(),
        inputDecorationTheme: inputDecorationTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
  
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
              borderRadius: BorderRadius.circular(30,),
              borderSide: BorderSide(color:kTextColor),
              gapPadding: 10,
          );
  return InputDecorationTheme(
           
            contentPadding: EdgeInsets.symmetric(horizontal:45,
            vertical: 20,
            ),
            enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          border: outlineInputBorder,
        );
}

TextTheme textTheme() {
  return TextTheme(
        bodyText1: TextStyle(color: kTextColor),
        bodyText2: TextStyle(color: kTextColor),
      );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
          color: Color(0xFFEDBBBB),
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: TextTheme(
            headline6: TextStyle(color: Color.fromARGB(255, 171, 88, 88),fontSize:18),
          )
          );
}