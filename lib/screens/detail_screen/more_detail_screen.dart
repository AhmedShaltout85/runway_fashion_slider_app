import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:runway_fashion_slider_app/common_widgets/custom_appbar.dart';
import 'package:runway_fashion_slider_app/model/men_category_list_model.dart';

import '../../common_widgets/custom_image.dart';
import '../../common_widgets/custom_text.dart';
import '../../utils/app_assets.dart';
import 'widgets/custom_elevated_icon_button.dart';

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
          DraggableScrollableSheet(
            initialChildSize: 0.45,
            minChildSize: 0.45,
            maxChildSize: 1.0,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, -5),
                    ),
                  ],
                ),
                child: ListView(
                  controller: scrollController,
                  padding: EdgeInsets.zero,
                  children: [
                    SizedBox(height: 10),
                    Center(
                      child: Image(image: AssetImage(AppAssets.RECTANGLE)),
                    ),
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
                            text: "£35",
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
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: 55,
                      width: 390,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.black, width: .4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: "Select colour",
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5.0,
                            ),
                            child: CustomImage(
                              image: AppAssets.UIL_SORT,
                              height: 14,
                              width: 14,
                              fit: BoxFit.none,
                            ),
                          ),
                          SizedBox(width: 50),
                          CustomImage(
                            image: AppAssets.RECTANGLE_VERTICAL,
                            height: 31,
                            width: 1,
                            fit: BoxFit.none,
                          ),
                          SizedBox(width: 50),
                          CustomText(
                            text: "Select size",
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5.0,
                            ),
                            child: CustomImage(
                              image: AppAssets.UIL_SORT,
                              height: 14,
                              width: 14,
                              fit: BoxFit.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomElevatedIconButton(
                      isIcon: false,
                      text: "ADD TO BAG",
                      bgColor: Colors.black,
                      textColor: Colors.white,
                    ),
                    const SizedBox(height: 5),
                    CustomElevatedIconButton(
                      isIcon: true,
                      iconWidget: CustomImage(
                        image: AppAssets.FREE_DELIVERY,
                        height: 24,
                        width: 24,
                        fit: BoxFit.none,
                      ),
                      text: "Free delivery",
                      bgColor: Colors.white,
                      textColor: Colors.black,
                    ),
                    CustomElevatedIconButton(
                      isIcon: true,
                      iconWidget: CustomImage(
                        image: AppAssets.FREE_RETURN,
                        height: 24,
                        width: 24,
                        fit: BoxFit.none,
                      ),
                      text: "Free return",
                      bgColor: Colors.white,
                      textColor: Colors.black,
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomText(
                        text: "About product",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomElevatedIconButton(
                      isIcon: true,
                      iconWidget: CustomImage(
                        image: AppAssets.SOLAR_HISTORY_OUTLINE,
                        height: 24,
                        width: 24,
                        fit: BoxFit.none,
                      ),
                      text: "Product details",
                      rightIcon: CustomImage(
                        image: AppAssets.IOS_ARROW_UP,
                        height: 24,
                        width: 24,
                        fit: BoxFit.none,
                      ),
                      bgColor: Colors.white,
                      textColor: Colors.black,
                    ),
                    CustomElevatedIconButton(
                      isIcon: true,
                      iconWidget: CustomImage(
                        image: AppAssets.SOLAR_HANGER_2_LINEAR,
                        height: 24,
                        width: 24,
                        fit: BoxFit.none,
                      ),
                      text: "Brand",
                      rightIcon: CustomImage(
                        image: AppAssets.IOS_ARROW_DOWN,
                        height: 24,
                        width: 24,
                        fit: BoxFit.none,
                      ),
                      bgColor: Colors.white,
                      textColor: Colors.black,
                    ),
                    CustomElevatedIconButton(
                      isIcon: true,
                      iconWidget: CustomImage(
                        image: AppAssets.TAPE_MEASURE,
                        height: 24,
                        width: 24,
                        fit: BoxFit.none,
                      ),
                      text: "Size and fit",
                      rightIcon: CustomImage(
                        image: AppAssets.IOS_ARROW_DOWN,
                        height: 24,
                        width: 24,
                        fit: BoxFit.none,
                      ),
                      bgColor: Colors.white,
                      textColor: Colors.black,
                    ),
                    CustomElevatedIconButton(
                      isIcon: true,
                      iconWidget: CustomImage(
                        image: AppAssets.SOLAR_HISTORY_OUTLINE,
                        height: 24,
                        width: 24,
                        fit: BoxFit.none,
                      ),
                      text: "History",
                      rightIcon: CustomImage(
                        image: AppAssets.IOS_ARROW_DOWN,
                        height: 24,
                        width: 24,
                        fit: BoxFit.none,
                      ),
                      bgColor: Colors.white,
                      textColor: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Row(
                        children: [
                          CustomText(
                            text: "You might also like",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          const Spacer(),
                          CustomText(
                            text: "View all",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: MenCategoryListModel.menCategoryList
                            .map(
                              (e) => Container(
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(3),
                                  // border: Border.all(color: Colors.grey),
                                ),
                                child: CustomImage(
                                  image: e.image,
                                  height: 261,
                                  width: 169,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
