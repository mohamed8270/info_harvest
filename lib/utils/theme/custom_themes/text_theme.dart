import 'package:flutter/material.dart';
import 'package:info_harvest/utils/constants/colors.dart';

class ITextTheme {
  ITextTheme._();

  static TextTheme lightTextTheme = TextTheme(
// heading
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.w500, color: IAppColor.softBlack),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 22, fontWeight: FontWeight.w600, color: IAppColor.softBlack),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: IAppColor.softBlack),

// titles
    titleLarge: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: IAppColor.softBlack),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: IAppColor.softBlack),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: IAppColor.softBlack),

// body
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w600, color: IAppColor.softBlack),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: IAppColor.softBlack),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w400, color: IAppColor.softBlack),

// labels
    labelLarge: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.w600, color: IAppColor.cementGrey),
    labelMedium: const TextStyle().copyWith(
        fontSize: 10, fontWeight: FontWeight.w500, color: IAppColor.softBlack),
    labelSmall: const TextStyle().copyWith(
        fontSize: 8, fontWeight: FontWeight.w400, color: IAppColor.softBlack),
  );
}
