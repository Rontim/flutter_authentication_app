import 'package:authentication_app/src/utils/themes/widget_themes/elevated_button_theme.dart';
import 'package:authentication_app/src/utils/themes/widget_themes/outline_button_theme.dart';
import 'package:authentication_app/src/utils/themes/widget_themes/text_field_theme.dart';
import 'package:flutter/material.dart';
import 'package:authentication_app/src/utils/themes/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.yellow,
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutLinedButtonTheme.lightOutLinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightTextFieldTheme,
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.yellow,
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutLinedButtonTheme.darkOutLinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.darkTextFieldTheme,
  );
}
