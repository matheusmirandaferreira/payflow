import 'package:flutter/material.dart';
import 'package:payflow/shared/theme/app_colors.dart';
import 'package:payflow/shared/theme/app_images.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background, 
      body: Stack(children: [
        Center(child: Image.asset(AppImages.union)),
        Center(child: Image.asset(AppImages.logoFull)),
      ])
    );
  }
}
