import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:runway_fashion_slider_app/common_widgets/custom_appbar.dart';
import 'package:runway_fashion_slider_app/screens/home/widgets/category_all_items.dart';
import 'package:runway_fashion_slider_app/common_widgets/custom_image.dart';
import 'package:runway_fashion_slider_app/common_widgets/custom_text.dart';
import 'package:runway_fashion_slider_app/common_widgets/custome_nav_bar.dart';
import 'package:runway_fashion_slider_app/utils/app_assets.dart';

class RunwayScreen extends StatelessWidget {
  const RunwayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Runway',
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 18,
        leadingIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SvgPicture.asset(AppAssets.BAR_CHART_2, height: 24, width: 24),
        ),
        trailingIcon: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Image(
              image: AssetImage(AppAssets.BELL_LINE_DUOTONE),
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey.shade300, width: 1.5),
          ),
        ),
        child: CustomBottomNavBar(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImage(
            image: AppAssets.GIRL_HOME,
            height: 500,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 10.0,
            ),
            child: CustomText(
              text: 'Categories',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          CategoriesAllItems(),
        ],
      ),
    );
  }
}
