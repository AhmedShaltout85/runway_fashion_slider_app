import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:runway_fashion_slider_app/common_widgets/custom_image.dart';
import 'package:runway_fashion_slider_app/utils/app_assets.dart';

import '../../../common_widgets/custom_text.dart';

class CustomAppBarWithBottomWidgets extends StatelessWidget
    implements PreferredSizeWidget {
  final String iconPath;
  final String iconPath2;
  const CustomAppBarWithBottomWidgets({
    super.key,
    required this.iconPath,
    required this.iconPath2,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final sWidth = size.width;
    final sHeight = size.height;
    final double iHW = 20;
    final double fontSize = 14;

    return AppBar(
      title: CustomText(
        text: "Men",
        fontSize: fontSize + 4,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      foregroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(AppAssets.ARROW_LEFT),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: Image(image: AssetImage(AppAssets.BI_BAG)),
          onPressed: () {},
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(color: Colors.black, width: .19),
              top: BorderSide(color: Colors.black, width: .19),
            ),
          ),
          height: sHeight * 0.07,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: CustomText(
                      text: "Sort by",
                      fontSize: fontSize,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  CustomImage(
                    image: AppAssets.UP_DOWN_ARROW,
                    height: iHW,
                    width: iHW,
                    fit: BoxFit.none,
                  ),
                  SizedBox(width: sWidth * 0.27),
                  CustomImage(
                    image: AppAssets.LUCIDE_SETTINGS,
                    height: iHW,
                    width: iHW,
                    fit: BoxFit.none,
                  ),
                  SizedBox(width: sWidth * 0.04),
                  CustomText(
                    text: "Filter",
                    fontSize: fontSize,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                  SizedBox(width: iHW),

                  CustomImage(
                    image: iconPath,
                    height: iHW,
                    width: iHW,
                    fit: BoxFit.none,
                  ),
                  SizedBox(width: iHW),

                  CustomImage(
                    image: iconPath2,
                    height: iHW,
                    width: iHW,
                    fit: BoxFit.none,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight + kBottomNavigationBarHeight);
}
