import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'circle_image_border.dart';

class IntroCircleImageBox extends StatelessWidget {
  const IntroCircleImageBox({super.key});

  @override
  Widget build(BuildContext context) {
    // final responsiveSize = ResponsiveSize(
    //   deviceWidth: context.width,
    //   mobileSize: context.width * .55,
    //   ipadSize: context.width * .30,
    //   smallScreenSize: context.width * .20,
    // );
    return SizedBox(
      // height: responsiveSize.getSize(),
      // width: responsiveSize.getSize(),
      child: CircleImageBorder(),
    )
        .animate()
        .shimmer(duration: Duration(seconds: 3))
        .scale(
          curve: Curves.easeIn,
          duration: Duration(seconds: 1),
        )
        .rotate(
          curve: Curves.easeIn,
          duration: Duration(seconds: 1),
        );
  }
}
