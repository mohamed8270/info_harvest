import 'package:flutter/material.dart';
import 'package:info_harvest/utils/constants/colors.dart';
import 'package:info_harvest/utils/constants/sizes.dart';
import 'package:info_harvest/utils/device/device_utility.dart';

class UserInputField extends StatelessWidget {
  const UserInputField(
      {super.key,
      required this.label,
      required this.hint,
      required this.validator,
      this.obscureTxt = false,
      required this.controller,
      required this.type,
      required this.w});

  final String label;
  final String hint;
  final double w;
  final TextInputType type;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final bool obscureTxt;

  @override
  Widget build(BuildContext context) {
    var size = IDeviceUtils.getDeviceSize();
    return FormField<String>(
        validator: validator,
        builder: (FormFieldState<String> field) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                label,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: IAppColor.softBlack),
              ),
              IAppSizes.spaceSm,
              Container(
                height: size.height * 0.06,
                width: w,
                decoration: BoxDecoration(
                    color: field.hasError ? Colors.red.withOpacity(0.06) : IAppColor.greyWhite,
                    borderRadius: BorderRadius.circular(5)),
                alignment: Alignment.center,
                child: TextFormField(
                  cursorColor: IAppColor.softBlack,
                  style: Theme.of(context).textTheme.labelMedium,
                  controller: controller,
                  obscureText: obscureTxt,
                  keyboardType: type,
                  onChanged: (value) => field.didChange(value),
                  decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(
                            color: IAppColor.cementGrey.withOpacity(0.7)),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: OutlineInputBorder(
                      borderSide:const BorderSide(width: 1.5, color:Colors.red),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    isCollapsed: true,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: IAppSizes.sm),
                  ),
                ),
              ),
              if (field.hasError)
                Text(
                  field.errorText ?? '',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: Colors.red),
                )
            ],
          );
        });
  }
}
