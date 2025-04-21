import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_extensions.dart';

import '../../data/models/responsive_size.dart';
import 'app_enums.dart';

abstract class AppColors {
  static Color white = const Color(0xffffffff);
  static final appBarGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      darkNeli,
      darkCiel,
    ],
  );
  static getGradient({required BuildContext context}) {
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: getStops(context: context),
      transform: GradientRotation(0.3),
      colors: [
        darkNeli,
        darkCiel,
      ],
    );
  }

  static Color darkCiel = const Color(0xff163044);
  static Color darkNeli = const Color(0xff26425A);
  static Color primaryColor = const Color(0xff86abcf);
  static Color secondaryColor = const Color(0xff4485c1);
  /////////////////////////////////////////////////

  static Color lightColor = const Color(0xffF5F5F5);
  static Color lowPriority = const Color(0xff848191);

  static Color darkColor = const Color(0xff000036);
  static Color scaffoldColor = const Color(0xff1A1A29);
  static Color appBarColor = const Color(0xff181824);
  static Color primaryLight = const Color(0xff31313F);

  static getStops({required BuildContext context}) {
    final responsiveSize = ResponsiveSize(
      deviceWidth: context.width,
      mobileSize: context.width * .55,
      ipadSize: context.width * .30,
      smallScreenSize: context.width * .20,
    );

    if (responsiveSize.deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return [0.3, 0.6];
    } else if (responsiveSize.deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return [0.3, 0.6];
    } else if (responsiveSize.deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return [0.4, 0.6];
    } else if (responsiveSize.deviceWidth <
        DeviceType.smallScreenLaptop.getMaxWidth()) {
      return [0.4, 0.6];
    } else if (responsiveSize.deviceWidth <
        DeviceType.largeScreenDesktop.getMaxWidth()) {
      return [0.4, 0.6];
    } else {
      return [0.4, 0.6];
    }
  }
}
