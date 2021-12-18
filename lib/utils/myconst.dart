import 'package:flutter/material.dart';

MaterialColor myGreen = const MaterialColor(0xFF0ab456, {
  50: Color(0xFF0ab264),
  100: Color(0xFF0ab264),
  200: Color(0xFF0ab264),
  300: Color(0xFF0ab264),
  400: Color(0xFF0ab264),
  500: Color(0xFF0ab264),
  600: Color(0xFF0ab264),
  700: Color(0xFF0ab264),
  800: Color(0xFF0ab264),
  900: Color(0xFF0ab264)
});

MaterialColor myBlack = const MaterialColor(0xff000000, {
  50: Color(0xff000000),
  100: Color(0xff000000),
  200: Color(0xff000000),
  300: Color(0xff000000),
  400: Color(0xff000000),
  500: Color(0xff000000),
  600: Color(0xff000000),
  700: Color(0xff000000),
  800: Color(0xff000000),
  900: Color(0xff000000)
});

MaterialColor getMyColor(int hexaValue) {
  MaterialColor myColor = MaterialColor(hexaValue, {
    50: Color(hexaValue),
    100: Color(hexaValue),
    200: Color(hexaValue),
    300: Color(hexaValue),
    400: Color(hexaValue),
    500: Color(hexaValue),
    600: Color(hexaValue),
    700: Color(hexaValue),
    800: Color(hexaValue),
    900: Color(hexaValue)
  });
  return myColor;
}

ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
        subtitle1: const TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        subtitle2: const TextStyle(
            color: Colors.white, fontSize: 10, fontStyle: FontStyle.italic),
        headline1: const TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        headline2: const TextStyle(
          color: Colors.grey,
          fontSize: 20,
        ),
        bodyText1: TextStyle(color: myGreen, fontSize: 22),
        bodyText2: const TextStyle(color: Colors.black, fontSize: 20)),
    primaryColor: Colors.white,
    primarySwatch: myGreen,
    backgroundColor: const Color.fromRGBO(229, 240, 243, 1),
    dividerTheme: const DividerThemeData(
      color: Colors.grey,
    ));

ThemeData darkTheme = ThemeData(
  dividerColor: Colors.white,
  textTheme: TextTheme(
      subtitle1: const TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      subtitle2: const TextStyle(
          color: Colors.white, fontSize: 10, fontStyle: FontStyle.italic),
      headline1: const TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
      headline2: const TextStyle(
        color: Colors.grey,
        fontSize: 20,
      ),
      bodyText1: TextStyle(color: myGreen, fontSize: 22),
      bodyText2: const TextStyle(color: Colors.black, fontSize: 20)),
  primaryColor: Colors.white,
  primarySwatch: myBlack,
  backgroundColor: const Color.fromRGBO(00, 00, 00, 1),
  dividerTheme: const DividerThemeData(
    color: Colors.white,
  ),
);
