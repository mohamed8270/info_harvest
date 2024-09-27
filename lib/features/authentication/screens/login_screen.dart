import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:info_harvest/utils/constants/colors.dart';
import 'package:info_harvest/utils/constants/images_string.dart';
import 'package:info_harvest/utils/constants/sizes.dart';
import 'package:info_harvest/utils/constants/text_string.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
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
                fit: BoxFit.fitWidth,
                filterQuality: FilterQuality.high,
              ),
            ),
            IAppSizes.spaceLg,
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
                    color: IAppColor.cementGrey,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                  ),
            ),
            IAppSizes.spaceMd,
            GestureDetector(
              onTap: () {},
              child: Container(
                height: screenSize.height * 0.065,
                width: screenSize.width * 0.9,
                decoration: BoxDecoration(
                  color: IAppColor.pulpRed,
                  borderRadius: BorderRadius.circular(IAppSizes.btnCorner3),
                ),
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      IAppImgString.google,
                      height: IAppSizes.icn2xl,
                      width: IAppSizes.icn2xl,
                      colorFilter: const ColorFilter.mode(
                        IAppColor.cloudWhite,
                        BlendMode.srcIn,
                      ),
                    ),
                    IAppSizes.spaceSm,
                    Text(
                      IAppText.onBoardingBtn,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: IAppColor.cloudWhite,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
