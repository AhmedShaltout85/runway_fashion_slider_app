import 'package:flutter/material.dart';

class CustomElevatedIconButton extends StatelessWidget {
  final Widget? iconWidget;
  final String text;
  final Widget? rightIcon;
  final Color bgColor;
  final Color textColor;
  final bool? isIcon;

  const CustomElevatedIconButton({
    super.key,
    this.iconWidget,
    required this.text,
    this.rightIcon,
    required this.bgColor,
    required this.textColor,
    this.isIcon,
  });

  @override
  Widget build(BuildContext context) {
    return isIcon == true
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton.icon(
              icon: iconWidget,
              style: ElevatedButton.styleFrom(
                backgroundColor: bgColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                fixedSize: const Size(390, 55),
              ),
              onPressed: () {},
              label: Row(
                children: [
                  Text(
                    text,
                    textAlign: isIcon == true
                        ? TextAlign.left
                        : TextAlign.center,

                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: textColor,
                    ),
                  ),
                  const Spacer(),
                  rightIcon ?? SizedBox.shrink(),
                ],
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: bgColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                fixedSize: const Size(390, 55),
              ),
              onPressed: () {},
              child: Text(
                text,
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: textColor,
                ),
              ),
            ),
          );
  }
}
