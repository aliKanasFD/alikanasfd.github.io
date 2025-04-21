import 'package:flutter/material.dart';
import 'package:pretty_animated_text/pretty_animated_text.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import 'intro_actions.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: context.width < DeviceType.mobile.getMaxWidth()
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        ScaleText(
          text: AppStrings.helloIM,
          duration: const Duration(seconds: 2),
          type: AnimationType.word,
          textStyle: context.width < DeviceType.ipad.getMaxWidth()
              ? AppStyles.s16
              : AppStyles.s32.copyWith(color: AppColors.white),
          textAlignment: _getTextAlign(context.width),
        ),
        const SizedBox(height: 6),
        ScaleText(
          text: AppStrings.developerName,
          duration: const Duration(seconds: 2),
          type: AnimationType.word,
          textStyle: context.width < DeviceType.ipad.getMaxWidth()
              ? AppStyles.s24
              : AppStyles.s52,
          textAlignment: _getTextAlign(context.width),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: context.width < DeviceType.mobile.getMaxWidth()
              ? context.width - 20
              : context.width / 2.5,
          child: ScaleText(
            text: AppStrings.introMsg,
            duration: const Duration(seconds: 1),
            type: AnimationType.word,
            textStyle: context.width < DeviceType.ipad.getMaxWidth()
                ? AppStyles.s14
                : AppStyles.s18,
            textAlignment: _getTextAlign(context.width),
          ),
        ),
        const SizedBox(height: 30),
        const IntoActions(),
      ],
    );
  }

  _getTextAlign(double screenWidth) {
    return screenWidth < DeviceType.mobile.getMaxWidth()
        ? TextAlignment.center
        : TextAlignment.start;
  }
}
