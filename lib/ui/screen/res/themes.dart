import 'package:flutter/material.dart';
import 'colors.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: lmPrimaryColor,
  tabBarTheme: TabBarTheme(
    labelColor: Colors.white,
    unselectedLabelColor: Colors.grey.shade500,
    indicator: ShapeDecoration.fromBoxDecoration(BoxDecoration(
      color: Color(0xFF3B3E5B),
      borderRadius: BorderRadius.circular(100),
    )),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Color(0xFF3B3E5B),
    unselectedItemColor: Colors.grey,
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: dmPrimaryColor,
  tabBarTheme: TabBarTheme(
    labelColor: Color(0xFF3B3E5B),
    unselectedLabelColor: textColorSecondary2,
    indicator: ShapeDecoration.fromBoxDecoration(BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(100),
    )),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: dmPrimaryColor,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey,
  ),
);