import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:info_harvest/utils/constants/colors.dart';
import 'package:info_harvest/utils/constants/images_string.dart';
import 'package:info_harvest/utils/constants/sizes.dart';
import 'package:info_harvest/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: IAppColor.cloudWhite,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                IAppText.welcome,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: IAppColor.softBlack),
              ),
              IAppSizes.spaceXs,
              Text(
                IAppText.userName,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: IAppColor.softBlack,
                    ),
              ),
            ],
          ),
          actions: [
            IAppSizes.spaceSm,
            CircleAvatar(
              radius: 20,
              backgroundColor: IAppColor.cloudWhite,
              child: ClipRect(
                clipBehavior: Clip.hardEdge,
                child: SvgPicture.asset(
                  IAppImgString.notify,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            IAppSizes.spaceSm,
            CircleAvatar(
              radius: 20,
              backgroundColor: IAppColor.cloudWhite,
              child: ClipRect(
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  IAppImgString.onBoardingImg,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screenSize.height * 0.35,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 3,
                  child: Container(
                    height: screenSize.height * 0.2,
                     width: screenSize.width * 0.4,
                    decoration: BoxDecoration(
                      gradient: IAppColor.radialGradient,
                      shape: BoxShape.circle
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: IAppSizes.sm,
                      right: IAppSizes.sm,
                      top: IAppSizes.md),
                  child: Column(
                    children: [
                      Text(
                        IAppText.heroTitle,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      IAppSizes.spaceSm,
                      Text(
                        IAppText.heroSub,
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
