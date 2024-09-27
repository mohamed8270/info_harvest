import 'package:flutter/material.dart';

class IAppColor {
  IAppColor._();

  // theme colors
  static const Color pulpRed = Color(0xFFFF4747);
  static const Color softBlack = Color(0xFF242424);
  static const Color cementGrey = Color(0xFF797979);
  static const Color greyWhite = Color(0xFFF6F6F6);
  static const Color cloudWhite = Color(0xFFFFFFFF);

  // gradients
  static Gradient linearGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.center,
    colors: [IAppColor.cloudWhite, IAppColor.cloudWhite.withOpacity(0.0)],
  );
}
