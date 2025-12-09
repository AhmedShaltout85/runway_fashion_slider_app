import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:runway_fashion_slider_app/common_widgets/custom_appbar.dart';

import '../../utils/app_assets.dart';
import 'widgets/custom_draggable_scorllable_sheet.dart';

class MoreDetailScreen extends StatelessWidget {
  const MoreDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Men',
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 18,
        leadingIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SvgPicture.asset(AppAssets.ARROW_LEFT, height: 24, width: 24),
        ),
        trailingIcon: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Image(
              image: AssetImage(AppAssets.BAG),
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          // Full screen image
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 160, left: 70, right: 70),
              child: Image.asset(AppAssets.FRAME_72, fit: BoxFit.fill),
            ),
          ),

          // Draggable scrollable sheet
          CustomDraggableScrollableSheet(size: size),
        ],
      ),
    );
  }
}
