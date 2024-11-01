import 'package:flutter/material.dart';
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
    var size = IDeviceUtils.getDeviceSize();
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
                height: size.height * 0.6,
                width: size.width,
                alignment: Alignment.center,
                IAppImgString.onBoardingImg,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
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
                height: size.height * 0.065,
                width: size.width * 0.9,
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
              Text(IAppText.haveAnAcc,style: Theme.of(context).textTheme.labelMedium?.copyWith(color: IAppColor.softBlack, fontWeight: FontWeight.w500),),
              IAppSizes.spaceXs,
              GestureDetector(
                onTap: () => Get.to(const SignupPage()),
                  child: Text(IAppText.signIn,style: Theme.of(context).textTheme.labelMedium?.copyWith(color: IAppColor.pulpRed, fontWeight: FontWeight.w500),)),
            ],),
          ],
        ),
      ),
    );
  }
}
