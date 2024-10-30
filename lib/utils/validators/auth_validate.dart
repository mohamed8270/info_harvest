import 'dart:ffi';

import 'package:info_harvest/utils/constants/text_strings.dart';

class AuthValidation {

  RegExp get alphabets => RegExp(r'^[a-zA-Z]+$');
  RegExp get email => RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}');
  RegExp get phone => RegExp(r'^\d{10}$');
  RegExp get password => RegExp(r'(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])');

  // name string check
  String? validateName(String? value) {
    if(value == null || value.isEmpty) {
      return IAppText.fillFields;
    } else if (value.length < 4) {
      return IAppText.shortNameError;
    } else if (!alphabets.hasMatch(value)) {
      return IAppText.alphabetError;
    }
    return null;
  }

  // email check
  String? validateEmail(String? value) {
   if(value == null || value.isEmpty) {
      return IAppText.fillFields;
   } else if (!email.hasMatch(value)) {
      return IAppText.emailError;
   }
    return null;
  }

  // phone number check
  String? validatePhone(String? value) {
    if(value == null || value.isEmpty) {
      return IAppText.fillFields;
    } else if (!phone.hasMatch(value)) {
      return IAppText.phoneError;
    }
    return null;
  }
  
  // password check
  String? validatePassword(String? value) {
    if(value == null || value.isEmpty) {
      return IAppText.fillFields;
    } else if (value.length < 8) {
      return IAppText.passLenError;
    } else if (!password.hasMatch(value)) {
      return IAppText.passError;
    }
    return null;
  }

  // check box
  String? validateCheckBox(bool? value) {
    if(value == null) {
      return IAppText.checkBoxError;
    } else if(!value) {
      return IAppText.checkBoxError;
    }
    return null;
  }

}