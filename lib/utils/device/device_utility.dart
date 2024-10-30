import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class IDeviceUtils {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color bgColor, Brightness icnColor) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: bgColor,statusBarIconBrightness: icnColor),
    );
  }

  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  static double getKeyboardHeight() {
    final viewInsects = MediaQuery.of(Get.context!).viewInsets;
    return viewInsects.bottom;
  }

  static Future<bool> isKeyboardVisible() async {
    final viewInsects = View.of(Get.context!).viewInsets;
    return viewInsects.bottom > 0;
  }

  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate);
  }

  static Size getDeviceSize() {
    return MediaQuery.sizeOf(Get.context!);
  }
}
