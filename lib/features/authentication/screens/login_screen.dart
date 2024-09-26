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
    var scrnsize = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [IappColor.cloudwhite, IappColor.cloudwhite.withOpacity(0.03)],
                ).createShader(bounds);
              },
              blendMode:BlendMode.srcATop ,
              child: SizedBox(
                height: scrnsize.height * 0.65,
                width: scrnsize.width,
                child: Image.asset(
                  IappImgString.onBoardingImg,
                  fit: BoxFit.fitWidth,filterQuality: FilterQuality.high,
                ),
              ),
            ),
            IappSizes.spacelg,
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: IappText.onBoardingTitle1,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(color: IappColor.pulpred),
                  ),
                  TextSpan(
                    text: IappText.onBoardingTitle2,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(height: 1.5),
                  ),
                ],
              ),
            ),
            IappSizes.spacemd,
            Text(
              IappText.onBoardingSub,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: IappColor.cementgrey,
                    fontWeight: FontWeight.w400,height: 1.6,
                  ),
            ),
            IappSizes.spacemd,
            GestureDetector(
              onTap: () {},
              child: Container(
                height: scrnsize.height * 0.065,
                width: scrnsize.width * 0.9,
                decoration: BoxDecoration(
                  color: IappColor.pulpred,
                  borderRadius: BorderRadius.circular(IappSizes.btncorner3),
                ),
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      IappImgString.google,
                      height: IappSizes.icnxl,
                      width: IappSizes.icnxl,
                      colorFilter: const ColorFilter.mode(
                        IappColor.cloudwhite,
                        BlendMode.srcIn,
                      ),
                    ),
                    IappSizes.spacesm,
                    Text(
                      IappText.onBoardingBtn,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: IappColor.cloudwhite),
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
