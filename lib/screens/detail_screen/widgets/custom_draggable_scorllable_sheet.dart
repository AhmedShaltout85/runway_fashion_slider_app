import 'package:flutter/material.dart';
import 'package:runway_fashion_slider_app/common_widgets/custom_image.dart';
import 'package:runway_fashion_slider_app/common_widgets/custom_text.dart';
import 'package:runway_fashion_slider_app/model/men_category_list_model.dart';
import 'package:runway_fashion_slider_app/utils/app_assets.dart';
import 'custom_elevated_icon_button.dart';

class CustomDraggableScrollableSheet extends StatelessWidget {
  const CustomDraggableScrollableSheet({super.key, required this.size});

  final Size size;
  final double kGap = 20;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.45,
      minChildSize: 0.45,
      maxChildSize: 1.0,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(kGap),
              topRight: Radius.circular(kGap),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: kGap - 10,
                offset: Offset(0, -5),
              ),
            ],
          ),
          child: ListView(
            controller: scrollController,
            padding: EdgeInsets.zero,
            children: [
              SizedBox(height: kGap - 10),
              Center(child: Image(image: AssetImage(AppAssets.RECTANGLE))),
              Padding(
                padding: EdgeInsets.only(
                  top: kGap - 10,
                  left: kGap,
                  right: kGap,
                  bottom: kGap - 10,
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
                      left: kGap,
                      right: size.width * 0.65,
                    ),
                    child: CustomText(
                      text: "£35",
                      fontSize: kGap,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: kGap - 10),
                    child: CustomImage(
                      image: AppAssets.VECTOR,
                      height: kGap - 2,
                      width: kGap - 2,
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
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: CustomImage(
                        image: AppAssets.UIL_SORT,
                        height: kGap - 6,
                        width: kGap - 6,
                        fit: BoxFit.none,
                      ),
                    ),
                    SizedBox(width: kGap + 30),
                    CustomImage(
                      image: AppAssets.RECTANGLE_VERTICAL,
                      height: 31,
                      width: 1,
                      fit: BoxFit.none,
                    ),
                    SizedBox(width: kGap + 30),
                    CustomText(
                      text: "Select size",
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: CustomImage(
                        image: AppAssets.UIL_SORT,
                        height: kGap - 6,
                        width: kGap - 6,
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
                  height: kGap + 4,
                  width: kGap + 4,
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
                  height: kGap + 4,
                  width: kGap + 4,
                  fit: BoxFit.none,
                ),
                text: "Free return",
                bgColor: Colors.white,
                textColor: Colors.black,
              ),
              SizedBox(height: kGap),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomText(
                  text: "About product",
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: kGap),
              CustomElevatedIconButton(
                isIcon: true,
                iconWidget: CustomImage(
                  image: AppAssets.SOLAR_HISTORY_OUTLINE,
                  height: kGap + 4,
                  width: kGap + 4,
                  fit: BoxFit.none,
                ),
                text: "Product details",
                rightIcon: CustomImage(
                  image: AppAssets.IOS_ARROW_UP,
                  height: kGap + 4,
                  width: kGap + 4,
                  fit: BoxFit.none,
                ),
                bgColor: Colors.white,
                textColor: Colors.black,
              ),
              CustomElevatedIconButton(
                isIcon: true,
                iconWidget: CustomImage(
                  image: AppAssets.SOLAR_HANGER_2_LINEAR,
                  height: kGap + 4,
                  width: kGap + 4,
                  fit: BoxFit.none,
                ),
                text: "Brand",
                rightIcon: CustomImage(
                  image: AppAssets.IOS_ARROW_DOWN,
                  height: kGap + 4,
                  width: kGap + 4,
                  fit: BoxFit.none,
                ),
                bgColor: Colors.white,
                textColor: Colors.black,
              ),
              CustomElevatedIconButton(
                isIcon: true,
                iconWidget: CustomImage(
                  image: AppAssets.TAPE_MEASURE,
                  height: kGap + 4,
                  width: kGap + 4,
                  fit: BoxFit.none,
                ),
                text: "Size and fit",
                rightIcon: CustomImage(
                  image: AppAssets.IOS_ARROW_DOWN,
                  height: kGap + 4,
                  width: kGap + 4,
                  fit: BoxFit.none,
                ),
                bgColor: Colors.white,
                textColor: Colors.black,
              ),
              CustomElevatedIconButton(
                isIcon: true,
                iconWidget: CustomImage(
                  image: AppAssets.SOLAR_HISTORY_OUTLINE,
                  height: kGap + 4,
                  width: kGap + 4,
                  fit: BoxFit.none,
                ),
                text: "History",
                rightIcon: CustomImage(
                  image: AppAssets.IOS_ARROW_DOWN,
                  height: kGap + 4,
                  width: kGap + 4,
                  fit: BoxFit.none,
                ),
                bgColor: Colors.white,
                textColor: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kGap, vertical: kGap),
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
    );
  }
}
