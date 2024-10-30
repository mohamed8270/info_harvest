import 'package:flutter/material.dart';
import 'package:info_harvest/common/widgets/userinput_field.dart';
import 'package:info_harvest/utils/constants/colors.dart';
import 'package:info_harvest/utils/constants/sizes.dart';
import 'package:info_harvest/utils/constants/text_strings.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: IAppSizes.sm) ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(IAppText.signUpTitle,style: Theme.of(context).textTheme.headlineMedium),
            IAppSizes.spaceSm,
            Text(IAppText.signupSub,style: Theme.of(context).textTheme.labelMedium?.copyWith(color: IAppColor.cementGrey), textAlign: TextAlign.center,),
            IAppSizes.spaceXl,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UserInputField(),

                UserInputField()
              ],
            ),
          ],),
        ),
      )),
    );
  }
}
