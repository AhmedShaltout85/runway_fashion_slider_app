import 'package:flutter/material.dart';
import 'package:runway_fashion_slider_app/common_widgets/custom_image.dart';
import 'package:runway_fashion_slider_app/utils/app_assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomImage(
          image: AppAssets.LOGO,
          width: 192.41,
          height: 77.47,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
