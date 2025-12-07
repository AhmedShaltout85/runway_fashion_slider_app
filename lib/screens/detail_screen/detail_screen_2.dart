import 'package:flutter/material.dart';
import 'package:runway_fashion_slider_app/common_widgets/custom_image.dart';
import 'package:runway_fashion_slider_app/screens/category/widgets/custom_appbar_with_bottom.dart';
import 'package:runway_fashion_slider_app/utils/app_assets.dart';

import '../../common_widgets/custom_draggable_scrollable_sheet.dart';
import '../../common_widgets/custom_text.dart';

class DetailScreenTwo extends StatelessWidget {
  const DetailScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarWithBottomWidgets(
        iconPath: AppAssets.ION_GRID_OUTLINE_LIGHT,
        iconPath2: AppAssets.SOLAR_USER_GROUP_OUTLINE_DARK,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Full screen image
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 160, left: 70, right: 70),
              child: Image.asset(AppAssets.IMAGE_6, fit: BoxFit.fill),
            ),
          ),

          CustomDraggableScrollableSheet(
            builder: (context, extent) => Column(
              children: [
                SizedBox(height: 10),
                Image(image: AssetImage(AppAssets.RECTANGLE)),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),
                  child: CustomText(
                    text: "Lightweight Men's Puffer Jacket",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: size.width * 0.65,
                      ),
                      child: CustomText(
                        text: "£28",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CustomImage(
                        image: AppAssets.VECTOR,
                        height: 18,
                        width: 18,
                        fit: BoxFit.contain,
                      ),
                    ),
                    CustomText(
                      text: "450",
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
            minExtent: 0.25,
            maxExtent: 1.0,
          ),
        ],
      ),
    );
  }
}
