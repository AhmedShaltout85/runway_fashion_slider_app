import 'package:flutter/material.dart';
import 'package:runway_fashion_slider_app/utils/app_assets.dart';
import 'package:runway_fashion_slider_app/utils/app_routes.dart';

import 'single_category_item.dart';

class CategoriesAllItems extends StatelessWidget {
  const CategoriesAllItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SingleCategoryItem(image: AppAssets.WOMEN_CAT, title: 'Women'),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.moreDetailRouteName);
            },
            child: SingleCategoryItem(image: AppAssets.MEN_CAT, title: 'Men'),
          ),
          SingleCategoryItem(image: AppAssets.KIDS_CAT, title: 'Kids'),
          SingleCategoryItem(image: AppAssets.DEALS_CAT, title: 'Deals'),
          SingleCategoryItem(image: AppAssets.HOME_CAT, title: 'Home'),
        ],
      ),
    );
  }
}
