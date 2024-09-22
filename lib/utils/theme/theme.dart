import 'package:flutter/material.dart';
import 'package:info_harvest/utils/constants/colors.dart';
import 'package:info_harvest/utils/theme/custome_themes/app_bar_theme.dart';
import 'package:info_harvest/utils/theme/custome_themes/text_theme.dart';

class IappTheme {
  IappTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: IappColor.pulpred,
    scaffoldBackgroundColor: IappColor.cloudwhite,
    textTheme: ItextTheme.lightTextTheme,
    appBarTheme: IappBarTheme.lightAppBar,
  );
}
