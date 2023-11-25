import 'package:authentication_app/src/constants/colors.dart';
import 'package:authentication_app/src/constants/sizes.dart';
import 'package:flutter/material.dart';

class TOutLinedButtonTheme {
  TOutLinedButtonTheme._();

  /* -- Light Outlined Button Theme -- */
  static OutlinedButtonThemeData lightOutLinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      foregroundColor: tSecondaryColor,
      side: const BorderSide(color: tSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );

  /* -- Dark Outlined Button Theme -- */
  static OutlinedButtonThemeData darkOutLinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      foregroundColor: tWhiteColor,
      side: const BorderSide(color: tWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    ),
  );
}
