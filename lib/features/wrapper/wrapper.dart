import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:info_harvest/features/product/screens/home_screen.dart';
import 'package:info_harvest/utils/theme/theme.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Info Harvest',
      theme: IappTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}
