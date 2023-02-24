import 'package:flutter/material.dart';

class MyTheme{
  static const Color primaryColor=Color(0xFF000000);
  static const Color primaryColorLight=Color(0xFFEFEDED);
  static const Color backgroundColorOrange=Color(0xFFFF5722);
  static final light =ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[200],
          centerTitle: true,
          elevation: 0
    ),
    primaryColor: primaryColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: MyTheme.backgroundColorOrange,
        padding: EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      )

    ),
    textTheme:const TextTheme(
      headline4: TextStyle(
          color: primaryColor,
          fontSize: 28,
          fontWeight: FontWeight.bold
      ),
      headline3: TextStyle(
        color: primaryColor,
        fontSize: 22,
        fontWeight: FontWeight.bold
      ),
      headline2: TextStyle(
          color: primaryColor,
          fontSize: 23,
          fontWeight: FontWeight.bold
      ),

    )
  );
}