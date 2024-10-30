import 'package:flutter/material.dart';
import 'package:info_harvest/common/widgets/check_box_form_field.dart';
import 'package:info_harvest/common/widgets/user_input_field.dart';
import 'package:info_harvest/utils/constants/colors.dart';
import 'package:info_harvest/utils/constants/sizes.dart';
import 'package:info_harvest/utils/constants/text_strings.dart';
import 'package:info_harvest/utils/device/device_utility.dart';
import 'package:info_harvest/utils/validators/auth_validate.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  var firstName = TextEditingController();
  var lastName = TextEditingController();
  var email = TextEditingController();
  var phone = TextEditingController();
  var password = TextEditingController();
  var validate = AuthValidation();

  String agreeError = '';
  bool agreeTerms = false;
  bool isChanged = false;

  var size = IDeviceUtils.getDeviceSize();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: IAppSizes.sm),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(IAppText.signUpTitle,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(fontWeight: FontWeight.w500)),
                  IAppSizes.spaceSm,
                  Text(
                    IAppText.signupSub,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(color: IAppColor.cementGrey.withOpacity(0.8)),
                    textAlign: TextAlign.center,
                  ),
                  IAppSizes.space2xl,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      UserInputField(
                          w: size.width * 0.45,
                          label: 'First name',
                          hint: 'Mohamed',
                          type: TextInputType.name,
                          controller: firstName,
                          validator: validate.validateName),
                      UserInputField(
                          w: size.width * 0.45,
                          label: 'First name',
                          hint: 'Ibrahim',
                          type: TextInputType.name,
                          controller: lastName,
                          validator: validate.validateName),
                    ],
                  ),
                  IAppSizes.spaceLg,
                  UserInputField(
                      w: size.width * 0.95,
                      label: 'Email',
                      hint: 'example@gmail.com',
                      validator: validate.validateEmail,
                      controller: email,
                      type: TextInputType.emailAddress),
                  IAppSizes.spaceLg,
                  UserInputField(
                      w: size.width * 0.95,
                      label: 'Phone',
                      hint: '9999999999',
                      validator: validate.validatePhone,
                      controller: phone,
                      type: TextInputType.number),
                  IAppSizes.spaceLg,
                  UserInputField(
                      w: size.width * 0.95,
                      label: 'Password',
                      hint: '********',
                      validator: validate.validatePassword,
                      controller: password,
                      type: TextInputType.visiblePassword),
                  IAppSizes.spaceSm,
                  CheckBoxFormField(
                      labelTxt1: IAppText.termsLabel1,
                      labelTxt2: IAppText.termsLabel2,
                      isChecked: agreeTerms,
                      isChanged: (bool? value) {
                        setState(() {
                          isChanged = true;
                          agreeTerms = value!;
                          if(agreeTerms) {
                            agreeError = '';
                          } else {
                            agreeError = IAppText.checkBoxError;
                          }
                        });
                      },
                      validator: validate.validateCheckBox,
                      error: agreeError,
                      context: context),
                  IAppSizes.spaceLg,
                  GestureDetector(
                    onTap: () async {
                      _formKey.currentState!.validate();
                      if(agreeError.isEmpty && agreeTerms) {
                        _formKey.currentState!.save();
                      } else {
                        setState(() => isChanged = true);
                      }
                    },
                    child: Container(
                      height: size.height * 0.065,
                      width: size.width * 0.9,
                      decoration: BoxDecoration(
                        color: IAppColor.pulpRed,
                        borderRadius: BorderRadius.circular(IAppSizes.btnCorner3),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        IAppText.signUp,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: IAppColor.cloudWhite,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  IAppSizes.space2xl,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(IAppText.haveAnAcc,style: Theme.of(context).textTheme.labelMedium?.copyWith(color: IAppColor.softBlack, fontWeight: FontWeight.w500),),
                      IAppSizes.spaceXs,
                      GestureDetector(
                          onTap: () {},
                          child: Text(IAppText.signIn,style: Theme.of(context).textTheme.labelMedium?.copyWith(color: IAppColor.pulpRed, fontWeight: FontWeight.w500),)),
                    ],),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
