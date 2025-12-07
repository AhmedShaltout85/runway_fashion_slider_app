import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  final BoxFit fit;
  const CustomImage({
    super.key,
    required this.height,
    required this.width,
    required this.fit,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(image),
      width: width,
      fit: fit,
      height: height,
    );
  }
}
