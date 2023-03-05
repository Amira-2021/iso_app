import 'dart:ui';
import 'package:flutter/material.dart';
class ProviderTheme {
  static const defaultColorGreen=Color(0xFF07410A);
  static const defaultColorYellow=Color(0xFFF1A707);

  static final lightTheme=ThemeData(
    appBarTheme:const AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: defaultColorGreen,
        fontSize: 25,
        fontWeight: FontWeight.bold
      ),
      elevation: 0,
    ),
    textTheme:const TextTheme(),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: defaultColorGreen
    ),
    bottomNavigationBarTheme:const BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(
        color: defaultColorYellow,
        size: 22
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 20
      ),
      selectedLabelStyle: TextStyle(
        color: defaultColorYellow,
        fontSize: 18
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.white,
        fontSize: 12
      ),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: defaultColorGreen,
      selectedItemColor: defaultColorYellow,
      unselectedItemColor: Colors.white
    ),
    bottomSheetTheme: BottomSheetThemeData(
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.only(
           topRight: Radius.circular(18),
           topLeft: Radius.circular(18)
         )
       )
    )
  );

}