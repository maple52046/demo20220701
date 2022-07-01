import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double dimension;
  final Color backgroundColor;
  const UserAvatar({
    required this.dimension,
    this.backgroundColor = const Color.fromRGBO(133, 193, 233, 1),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: dimension,
      child: CircleAvatar(backgroundColor: backgroundColor),
    );
  }
}
