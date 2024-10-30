import 'package:flutter/material.dart';
import 'package:info_harvest/common/widgets/userinput_field.dart';
import 'package:info_harvest/utils/constants/colors.dart';
import 'package:info_harvest/utils/constants/sizes.dart';
import 'package:info_harvest/utils/constants/text_strings.dart';
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

  @override
  Widget build(BuildContext context) {
    var validate = AuthValidation();
    return Scaffold(
      body: SafeArea(child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: IAppSizes.sm) ,
          child: Form(
            key: _formKey,
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
                  UserInputField(label: 'First name',hint: 'Mohamed', type: TextInputType.name, controller: firstName,validator: validate.validateName),
                  UserInputField(label: 'First name',hint: 'Mohamed', type: TextInputType.name, controller: lastName,validator: validate.validateName),
                ],
              ),
                IAppSizes.spaceSm,

            ],),
          ),
        ),
      )),
    );
  }
}
