import 'package:flutter/material.dart';
import 'package:info_harvest/utils/constants/colors.dart';

class ItextTheme {
  ItextTheme._();

  static TextTheme lightTextTheme = TextTheme(
// heading
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.w500, color: IappColor.softblack),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 22, fontWeight: FontWeight.w600, color: IappColor.softblack),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: IappColor.softblack),

// titles
    titleLarge: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: IappColor.softblack),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: IappColor.softblack),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: IappColor.softblack),

// body
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w600, color: IappColor.softblack),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: IappColor.softblack),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w400, color: IappColor.softblack),

// labels
    labelLarge: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.w600, color: IappColor.softblack),
    labelMedium: const TextStyle().copyWith(
        fontSize: 10, fontWeight: FontWeight.w500, color: IappColor.softblack),
    labelSmall: const TextStyle().copyWith(
        fontSize: 8, fontWeight: FontWeight.w400, color: IappColor.softblack),
  );
}
