import 'package:flutter/material.dart';

class UserTag extends StatelessWidget {
  final Color backgroundColor;
  final double borderRadius;
  final String text;
  final TextStyle textStyle;
  final double width;
  final double height;
  const UserTag({
    required this.text,
    this.backgroundColor = const Color.fromRGBO(214, 234, 248, 1),
    this.borderRadius = 20,
    this.textStyle = const TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
    this.width = 60,
    this.height = 24,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: backgroundColor,
      ),
      child: Text(text, style: textStyle, textAlign: TextAlign.center),
    );
  }
}
