import 'package:authentication_app/src/constants/colors.dart';
import 'package:flutter/material.dart';

class TTextFieldTheme {
  TTextFieldTheme._();

  /* -- Light TextField Theme -- */
  static InputDecorationTheme lightTextFieldTheme = const InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    prefixIconColor: tSecondaryColor,
    floatingLabelStyle: TextStyle(color: tSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: tSecondaryColor),
    ),
  );

  /* -- Dark TextField Theme -- */
  static InputDecorationTheme darkTextFieldTheme = const InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    prefixIconColor: tPrimaryColor,
    floatingLabelStyle: TextStyle(color: tPrimaryColor),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide(color: tPrimaryColor),
    ),
  );
}
