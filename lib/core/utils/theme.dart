import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: 'Poppins',
);

abstract class CustomTextStyle {
  static const TextStyle largeLight = TextStyle(
    fontSize: 28,
  );
  static const TextStyle largeDark = TextStyle(
    fontSize: 28,
    color: CustomColors.black,
  );
  static const TextStyle mediumLight = TextStyle(
    fontSize: 20,
  );
  static const TextStyle mediumSemiLight = TextStyle(
    fontSize: 20,
    color: CustomColors.blackLight,
  );
  static const TextStyle mediumDark = TextStyle(
    fontSize: 20,
    color: CustomColors.black,
  );
  static const TextStyle smallLight = TextStyle(
    fontSize: 14,
  );
  static const TextStyle smallSemiLight = TextStyle(
    fontSize: 14,
    color: CustomColors.blackLight,
  );
  static const TextStyle smallDark = TextStyle(
    fontSize: 14,
    color: CustomColors.black,
  );
}

abstract class CustomColors {
  static const Color black = Colors.black;
  static const Color blackLight = Colors.black45;
}
