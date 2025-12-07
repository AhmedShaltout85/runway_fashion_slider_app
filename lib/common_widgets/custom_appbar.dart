import 'package:flutter/material.dart';
import 'package:runway_fashion_slider_app/common_widgets/custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leadingIcon;
  final List<Widget>? trailingIcon;
  final bool? centerTitle;
  final double elevation;
  final FontWeight fontWeight;
  final Color color;
  final double fontSize;
  final Color backgroundColor;

  const CustomAppBar({
    super.key,
    required this.title,
    this.leadingIcon,
    this.trailingIcon,
    this.centerTitle,
    this.elevation = 0,
    this.fontWeight = FontWeight.bold,
    this.color = Colors.black,
    this.fontSize = 18,
    this.backgroundColor = Colors.transparent,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CustomText(
        text: title,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      backgroundColor: backgroundColor,
      centerTitle: centerTitle,
      elevation: elevation,
      leading: leadingIcon,
      actions: trailingIcon,
    );
  }
}
