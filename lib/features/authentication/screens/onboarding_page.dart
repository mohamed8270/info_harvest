import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:info_harvest/features/authentication/screens/signup_page.dart';
import 'package:info_harvest/features/product/screens/home_screen.dart';
import 'package:info_harvest/utils/constants/colors.dart';
import 'package:info_harvest/utils/constants/images_string.dart';
import 'package:info_harvest/utils/constants/sizes.dart';
import 'package:info_harvest/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:info_harvest/utils/device/device_utility.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    IDeviceUtils.setStatusBarColor(IAppColor.cloudWhite, Brightness.dark);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return IAppColor.linearGradient.createShader(bounds);
              },
              blendMode: BlendMode.srcATop,
              child: Image.asset(
                height: screenSize.height * 0.65,
                width: screenSize.width,
                alignment: Alignment.center,
                IAppImgString.onBoardingImg,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
            ),
            IAppSizes.spaceXs,
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: IAppText.onBoardingTitle1,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: IAppColor.pulpRed),
                  ),
                  TextSpan(
                    text: IAppText.onBoardingTitle2,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(height: 1.5),
                  ),
                ],
              ),
            ),
            IAppSizes.spaceMd,
            Text(
              IAppText.onBoardingSub,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                  ),
            ),
            IAppSizes.spaceMd,
            GestureDetector(
              onTap: () => Get.to(const HomeScreen()),
              child: Container(
                height: screenSize.height * 0.065,
                width: screenSize.width * 0.9,
                decoration: BoxDecoration(
                  color: IAppColor.pulpRed,
                  borderRadius: BorderRadius.circular(IAppSizes.btnCorner3),
                ),
                alignment: Alignment.center,
                child: Text(
                  IAppText.onBoardingBtn,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: IAppColor.cloudWhite,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            IAppSizes.spaceXl,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(IAppText.onBoardingLogin1,style: Theme.of(context).textTheme.labelMedium?.copyWith(color: IAppColor.softBlack, fontWeight: FontWeight.w500),),
              IAppSizes.spaceXs,
              GestureDetector(
                onTap: () => Get.to(const SignupPage()),
                  child: Text(IAppText.onBoardingLogin2,style: Theme.of(context).textTheme.labelMedium?.copyWith(color: IAppColor.pulpRed, fontWeight: FontWeight.w500),)),
            ],),
          ],
        ),
      ),
    );
  }
}
