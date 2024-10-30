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
                    isError: true),
                IAppSizes.spaceMd,
                Text(labelTxt1,
                    style: Theme.of(context).textTheme.labelMedium),
                IAppSizes.spaceSm,
                Text(labelTxt1,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(color: IAppColor.pulpRed)),
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
                            .labelSmall
                            ?.copyWith(color: Colors.red)))
              ],
            )
          ],
        );
      });
}
