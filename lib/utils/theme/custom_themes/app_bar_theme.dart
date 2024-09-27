import 'package:flutter/material.dart';
import 'package:info_harvest/utils/constants/colors.dart';

class IAppBarTheme {
  IAppBarTheme._();

  static AppBarTheme lightAppBar = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
    backgroundColor: IAppColor.cloudWhite,
    iconTheme:
        const IconThemeData().copyWith(size: 18, color: IAppColor.softBlack),
    actionsIconTheme:
        const IconThemeData().copyWith(size: 18, color: IAppColor.softBlack),
    titleTextStyle: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: IAppColor.softBlack),
  );
}
