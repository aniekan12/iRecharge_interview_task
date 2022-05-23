import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  fontFamily: 'OpenSans',
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: TextTheme(
    headline1: const TextStyle().copyWith(
      fontFamily: 'OpenSans',
      fontSize: 56,
      fontWeight: FontWeight.w700,
    ),
    headline2: const TextStyle().copyWith(
      fontFamily: 'OpenSans',
      fontSize: 48,
      fontWeight: FontWeight.w700,
    ),
    headline3: const TextStyle().copyWith(
      fontFamily: 'OpenSans',
      fontSize: 40,
      fontWeight: FontWeight.w700,
    ),
    headline4: const TextStyle().copyWith(
      fontFamily: 'OpenSans',
      fontSize: 32,
      fontWeight: FontWeight.w700,
    ),
    headline5: const TextStyle().copyWith(
      fontFamily: 'OpenSans',
      fontSize: 2,
      fontWeight: FontWeight.w700,
    ),
    headline6: const TextStyle().copyWith(
      fontFamily: 'OpenSans',
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    bodyText1: const TextStyle().copyWith(fontFamily: 'OpenSans'),
    bodyText2: const TextStyle().copyWith(fontFamily: 'OpenSans'),
    caption: const TextStyle().copyWith(fontFamily: 'OpenSans'),
    button: const TextStyle().copyWith(fontFamily: 'OpenSans'),
    overline: const TextStyle().copyWith(fontFamily: 'OpenSans'),
  ),
);
