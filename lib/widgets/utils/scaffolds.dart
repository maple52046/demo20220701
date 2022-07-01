import 'package:flutter/material.dart';

class ColorfulScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Color backgroundColor;
  final Widget body;
  final Gradient gradient;
  const ColorfulScaffold({
    required this.body,
    required this.backgroundColor,
    required this.gradient,
    this.appBar,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: gradient),
      child: Scaffold(
        appBar: appBar,
        backgroundColor: backgroundColor,
        body: body,
      ),
    );
  }
}
