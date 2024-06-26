import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;
  // Avoid self instance
  TextStyles._();
  static TextStyles get instance => _instance ??= TextStyles._();

  String get font => 'mplus1';

  TextStyle get textLight => TextStyle(
        fontFamily: font,
        fontWeight: FontWeight.w300,
      );

  TextStyle get textRegular => TextStyle(
        fontFamily: font,
        fontWeight: FontWeight.normal,
      );

  TextStyle get textMedium => TextStyle(
        fontFamily: font,
        fontWeight: FontWeight.w500,
      );

  TextStyle get textSemiBold => TextStyle(
        fontFamily: font,
        fontWeight: FontWeight.w600,
      );

  TextStyle get textBold => TextStyle(
        fontFamily: font,
        fontWeight: FontWeight.bold,
      );

  TextStyle get textExtraBold => TextStyle(
        fontFamily: font,
        fontWeight: FontWeight.w800,
      );

  TextStyle get textButtonLabel => textBold.copyWith(
        fontSize: 16,
      );
}

extension TextStylesExtension on BuildContext {
  TextStyles get textStyles => TextStyles.instance;
}
