import 'package:flutter/material.dart';

import 'package:portfolio/core/utils/app_strings.dart';
import 'package:portfolio/core/utils/social_links.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/widgets/custom_button.dart';

class IntoActions extends StatelessWidget {
  const IntoActions({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> actions = [
      CustomButton(
        label: AppStrings.previewCV,
        icon: Icons.remove_red_eye,
        backgroundColor: AppColors.primaryColor,
        onPressed: () async {
          _launchUrl();
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => MyWidget()));
          // await showCV();
          // context.read<HomeBloc>().add(ChangeAppBarHeadersIndex(1));
        },
        width: 160,
      ),
      // context.width < DeviceType.ipad.getMaxWidth()
      //     ? const SizedBox(height: 6)
      //     : const SizedBox(width: 32),
      // CustomButton(
      //   label: AppStrings.downloadCV,
      //   icon: Icons.person,
      //   borderColor: AppColors.primaryColor,
      //   onPressed: () {
      //     context.read<HomeBloc>().add(ChangeAppBarHeadersIndex(2));
      //   },
      //   width: 160,
      // ),
    ];
    return context.width < DeviceType.ipad.getMaxWidth()
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: actions,
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: actions,
          );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse(SocialLinks.cvLink))) {
      throw Exception('Could not launch ');
    }
  }
}
