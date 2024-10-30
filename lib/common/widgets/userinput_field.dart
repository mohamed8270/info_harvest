import 'package:flutter/material.dart';
import 'package:info_harvest/utils/constants/colors.dart';
import 'package:info_harvest/utils/constants/sizes.dart';
import 'package:info_harvest/utils/device/device_utility.dart';

class UserInputField extends StatelessWidget {
  const UserInputField({super.key, required this.label, required this.hint, required this.validator, this.obscureTxt=false, required this.controller, required this.type});

  final String label;
  final String hint;
  final TextInputType type;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final bool obscureTxt;

  @override
  Widget build(BuildContext context) {
    var size = IDeviceUtils.getDeviceSize();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: Theme.of(context).textTheme.labelLarge?.copyWith(color: IAppColor.softBlack),),
        IAppSizes.spaceSm,
        Container(
          height:  size.height*0.055,
          width: size.width *0.43,
          decoration: BoxDecoration(color: IAppColor.greyWhite,borderRadius: BorderRadius.circular(5)),
          alignment: Alignment.center,
          child: TextFormField(
            cursorColor: IAppColor.softBlack,
            style: Theme.of(context).textTheme.labelMedium,
            validator: validator,
            controller: controller,
            obscureText: obscureTxt,
            keyboardType: type,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: Theme.of(context).textTheme.labelMedium?.copyWith(color: IAppColor.cementGrey.withOpacity(0.5)),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              isCollapsed: true,
              contentPadding:const EdgeInsets.symmetric(horizontal: IAppSizes.sm),
            ),
          ),
        ),
      ],
    );
  }
}
