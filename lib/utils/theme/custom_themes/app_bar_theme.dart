import 'package:flutter/material.dart';
import 'package:info_harvest/utils/constants/colors.dart';

class IappBarTheme {
  IappBarTheme._();

  static AppBarTheme lightAppBar = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
    backgroundColor: IappColor.cloudwhite,
    iconTheme:
        const IconThemeData().copyWith(size: 18, color: IappColor.softblack),
    actionsIconTheme:
        const IconThemeData().copyWith(size: 18, color: IappColor.softblack),
    titleTextStyle: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: IappColor.softblack),
  );
}
