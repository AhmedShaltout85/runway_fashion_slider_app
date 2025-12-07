import 'package:flutter/material.dart';
import 'package:runway_fashion_slider_app/model/men_category_list_model.dart';
import 'package:runway_fashion_slider_app/utils/app_assets.dart';

import '../../../common_widgets/custom_image.dart';
import '../../../common_widgets/custom_text.dart';

class CategoryGridViewitem extends StatelessWidget {
  const CategoryGridViewitem({super.key});

  @override
  Widget build(BuildContext context) {
    var iWidth = MediaQuery.of(context).size.width;
    var iHeight = MediaQuery.of(context).size.height;
    final double iFontSize = 14;
    return GridView.builder(
      itemCount: MenCategoryListModel.menCategoryList.length,
      padding: EdgeInsets.only(left: 10, right: 15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 1 / 1.8,
      ),
      itemBuilder: (context, index) {
        return Container(
          width: iWidth * 0.5,
          height: iHeight * 0.3,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: iHeight * 0.3,
                width: iWidth * 0.5,
                decoration: BoxDecoration(
                  color: Color(0xFFECECEC),
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                    image: AssetImage(
                      MenCategoryListModel.menCategoryList[index].image,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: CustomText(
                  text: MenCategoryListModel.menCategoryList[index].title,
                  fontSize: iFontSize,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5.0,
                  vertical: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: MenCategoryListModel.menCategoryList[index].price,
                      fontSize: iFontSize + 2,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                    CustomImage(
                      image: AppAssets.VECTOR,
                      height: 18,
                      width: 18,
                      fit: BoxFit.none,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
