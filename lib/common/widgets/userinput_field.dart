import 'package:flutter/material.dart';
import 'package:info_harvest/utils/constants/colors.dart';
import 'package:info_harvest/utils/constants/sizes.dart';
import 'package:info_harvest/utils/device/device_utility.dart';

class UserInputField extends StatelessWidget {
  const UserInputField({super.key});

  @override
  Widget build(BuildContext context) {
    var size = IDeviceUtils.getDeviceSize();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('First name', style: Theme.of(context).textTheme.labelLarge?.copyWith(color: IAppColor.softBlack),),
        IAppSizes.spaceSm,
        Container(
          height:  size.height*0.055,
          width: size.width *0.43,
          decoration: BoxDecoration(color: IAppColor.greyWhite,borderRadius: BorderRadius.circular(5)),
          alignment: Alignment.center,
          child: TextFormField(
            cursorColor: IAppColor.softBlack,
            style: Theme.of(context).textTheme.labelMedium,

          onSaved: (String? value) {},
            validator: (String? valur) {},
            decoration: InputDecoration(
              hintText: 'Ex: Jhon',
              hintStyle: Theme.of(context).textTheme.labelMedium?.copyWith(color: IAppColor.cementGrey.withOpacity(0.5)),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              isCollapsed: true,
              contentPadding: EdgeInsets.symmetric(horizontal: IAppSizes.sm),
            ),
          ),
        ),
      ],
    );
  }
}
