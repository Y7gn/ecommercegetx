import 'package:ecommercegetx/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: AppColorApp.black),
      bodyMedium: TextStyle(
        height: 2,
        color: AppColorApp.grey,
        fontSize: 14,
      )),
  primarySwatch: Colors.blue,
);
ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: AppColorApp.black),
      bodyMedium: TextStyle(
        height: 2,
        color: AppColorApp.grey,
        fontSize: 14,
      )),
  primarySwatch: Colors.blue,
);
