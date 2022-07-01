import 'package:flutter/material.dart';

class ContentGrid extends StatelessWidget {
  final SliverGridDelegate gridDelegate;
  final Color itemColor;
  final double itemBorderRadius;
  final int itemCount;
  final EdgeInsetsGeometry padding;
  final ScrollPhysics? physics;
  const ContentGrid({
    required this.itemCount,
    this.gridDelegate = const SliverGridDelegateWithFixedCrossAxisCount(
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      crossAxisCount: 3,
    ),
    this.itemColor = Colors.white,
    this.itemBorderRadius = 10.0,
    this.padding = const EdgeInsets.all(4),
    this.physics,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      addAutomaticKeepAlives: false,
      addRepaintBoundaries: false,
      physics: physics,
      padding: padding,
      gridDelegate: gridDelegate,
      itemCount: itemCount,
      itemBuilder: (ctx, index) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(itemBorderRadius),
          color: itemColor,
        ),
        alignment: Alignment.center,
        child: Text('G$index'),
      ),
    );
  }
}
