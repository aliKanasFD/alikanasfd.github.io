import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import '../widgets/body/home_body.dart';
import '../widgets/app_bar/home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(gradient: AppColors.getGradient(context: context)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: HomeAppBar(),
        body: HomeBody(),
      ),
    );
  }
}
