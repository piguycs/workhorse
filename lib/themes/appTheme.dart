import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: const Color(0X161E36FF),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: Colors.transparent,
    indicatorColor: const Color(0xff7564fb),
    labelTextStyle: MaterialStateProperty.all(
      const TextStyle(
        color: Color.fromARGB(255, 202, 213, 234),
      ),
    ),
    iconTheme: MaterialStateProperty.all(
      const IconThemeData(
        color: Color.fromARGB(255, 202, 213, 234),
      ),
    ),
  ),
);

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: const Color(0X161E36FF),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: Colors.transparent,
    indicatorColor: const Color(0xff7564fb),
    labelTextStyle: MaterialStateProperty.all(
      const TextStyle(
        color: Color.fromARGB(255, 202, 213, 234),
      ),
    ),
    iconTheme: MaterialStateProperty.all(
      const IconThemeData(
        color: Color.fromARGB(255, 202, 213, 234),
      ),
    ),
  ),
);
