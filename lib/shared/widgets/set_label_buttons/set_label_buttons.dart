import 'package:flutter/material.dart';
import 'package:payflow/shared/theme/app_colors.dart';
import 'package:payflow/shared/theme/app_text_styles.dart';
import 'package:payflow/shared/widgets/divider_vertical/divider_vertical.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final List<String> labels;
  final List<VoidCallback> onPresseds;
  final bool enablePrimaryColor;

  const SetLabelButtons({
    Key? key,
    required this.labels,
    required this.onPresseds,
    this.enablePrimaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.shape,
      height: 56,
      child: Row(
        children: [
          Expanded(
              child: LabelButton(
            label: labels[0],
            onPressed: onPresseds[0],
            style: TextStyles.buttonPrimary,
          )),
          DividerVerticalWidget(),
          Expanded(
            child: LabelButton(
              label: labels[1],
              onPressed: onPresseds[1],
            ),
          )
        ],
      ),
    );
  }
}
