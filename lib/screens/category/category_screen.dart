import 'package:flutter/material.dart';
import 'package:runway_fashion_slider_app/screens/category/widgets/category_gridview_item.dart';
import 'package:runway_fashion_slider_app/utils/app_assets.dart';

import 'widgets/custom_appbar_with_bottom.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithBottomWidgets(
        iconPath: AppAssets.ION_GRID_OUTLINE,
        iconPath2: AppAssets.SOLAR_USER_GROUP_OUTLINE,
      ),
      body: CategoryGridViewitem(),
    );
  }
}
