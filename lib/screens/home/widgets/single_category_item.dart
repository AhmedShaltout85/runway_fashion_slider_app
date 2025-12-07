import 'package:flutter/material.dart';
import 'package:runway_fashion_slider_app/common_widgets/custom_text.dart';

class SingleCategoryItem extends StatelessWidget {
  final String image;
  final String title;

  const SingleCategoryItem({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CircleAvatar(radius: 38, backgroundImage: AssetImage(image)),
          CustomText(
            text: title,
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
