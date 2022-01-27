import 'package:flutter/material.dart';
import 'package:payflow/shared/theme/app_colors.dart';
import 'package:payflow/shared/theme/app_text_styles.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class BottomSheetWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  final List<String> labels;
  final List<VoidCallback> onPresseds;

  const BottomSheetWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.labels,
    required this.onPresseds,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      left: true,
      right: true,
      bottom: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Material(
          child: Container(
            color: AppColors.shape,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Text.rich(
                        TextSpan(
                            style: TextStyles.buttonBoldHeading,
                            text: title,
                            children: [
                              TextSpan(
                                text: "\n$subtitle",
                                style: TextStyles.buttonHeading,
                              )
                            ]),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 1,
                      color: AppColors.stroke,
                    ),
                    SetLabelButtons(
                        enablePrimaryColor: true,
                        labels: labels,
                        onPresseds: onPresseds)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
