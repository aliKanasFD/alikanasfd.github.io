import 'package:flutter/material.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import 'intro_circle_image_box.dart';
import 'intro_text.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return context.width < DeviceType.mobile.getMaxWidth()
        ? const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              IntroCircleImageBox(),
              SizedBox(height: 50),
              IntroText(),
            ],
          )
        : Column(
            children: [
              SizedBox(height: 50),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IntroText(),
                  IntroCircleImageBox(),
                ],
              ),
            ],
          );
  }
}
