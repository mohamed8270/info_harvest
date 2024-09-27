import 'package:flutter/material.dart';
import 'package:info_harvest/utils/constants/colors.dart';
import 'package:info_harvest/utils/constants/images_string.dart';
import 'package:info_harvest/utils/constants/sizes.dart';
import 'package:info_harvest/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          leading: Column(
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
              IAppSizes.spaceSm,
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
            CircleAvatar(
              radius: 30,
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
          Stack(
            children: [
              Text(
                IAppText.heroTitle,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              IAppSizes.spaceSm,
              Text(
                IAppText.heroSub,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: IAppColor.softBlack.withOpacity(0.6),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
