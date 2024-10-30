import 'package:flutter/material.dart';
import 'package:info_harvest/utils/constants/colors.dart';
import 'package:info_harvest/utils/constants/sizes.dart';

class CheckBoxFormField extends FormField<bool> {
  final String labelTxt1;
  final String labelTxt2;
  final bool isChecked;
  final String error;
  final void Function(bool?) isChanged;
  final BuildContext context;

  CheckBoxFormField(
      {super.key,
        required this.labelTxt1,
        required this.labelTxt2,
        required this.isChecked,
        required this.isChanged,
        required super.validator,
        required this.error,
        required this.context})
      : super(
      initialValue: isChecked,
      builder: (FormFieldState<bool> state) {
        return Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    value: isChecked,
                    onChanged: isChanged,
                    checkColor: IAppColor.cloudWhite,
                    activeColor: IAppColor.pulpRed,
                    isError: true),
                Text(labelTxt1,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w500, color: IAppColor.softBlack)),
                Text(labelTxt2,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(color: IAppColor.pulpRed, fontWeight: FontWeight.w500)),
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: IAppSizes.sm),
                    child: Text(error.isNotEmpty ? '* $error' : '',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(color: Colors.red)))
              ],
            )
          ],
        );
      });
}
