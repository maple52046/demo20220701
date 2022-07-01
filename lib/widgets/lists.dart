import 'package:flutter/material.dart';

class ContentList extends StatelessWidget {
  final Color itemColor;
  final double itemBorderRadius;
  final int itemCount;
  final double itemHeight;
  final EdgeInsetsGeometry padding;
  final ScrollPhysics? physics;
  final Widget separator;
  const ContentList({
    required this.itemCount,
    this.itemColor = Colors.white,
    this.itemBorderRadius = 10,
    this.itemHeight = 64,
    this.padding = const EdgeInsets.all(8),
    this.physics,
    this.separator = const SizedBox(height: 8),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      addAutomaticKeepAlives: false,
      addRepaintBoundaries: false,
      physics: physics,
      padding: padding,
      separatorBuilder: (c, _) => separator,
      itemCount: itemCount,
      itemBuilder: (ctx, index) => Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(itemBorderRadius),
          color: itemColor,
        ),
        height: itemHeight,
        child: Text('L$index'),
      ),
    );
  }
}
