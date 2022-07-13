import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.color = Colors.white,
    this.textColor = Colors.black,
    this.textSize = 22,
    this.isBorder = false,
    this.isIcon = false,
    this.icon,
    this.padding = const EdgeInsets.symmetric(horizontal: 25, vertical: 4),
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final double textSize;
  final Color color;
  final bool isBorder;
  final bool isIcon;
  final Widget? icon;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        padding: padding,
        decoration: BoxDecoration(
            color: isBorder ? Colors.transparent : color,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                width: 4, color: isBorder ? color : Colors.transparent)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isIcon) icon!,
            if (isIcon) const SizedBox(width: 15),
            Text(
              text,
              style: TextStyle(
                color: isBorder ? color : textColor,
                fontSize: textSize,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
