import 'package:flutter/material.dart';

class SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final Color backgroundColor;
  final TabBar tabBar;
  final Radius topRadius;

  const SliverTabBarDelegate({
    required this.tabBar,
    required this.backgroundColor,
    required this.topRadius,
  });

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(context, shrinkOffset, overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: topRadius,
          topRight: topRadius,
        ),
        color: backgroundColor,
      ),
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(SliverTabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }
}

class SliverTabBarView extends StatelessWidget {
  final List<Widget> children;
  final TabController? controller;
  final Color color;
  const SliverTabBarView({
    required this.children,
    required this.color,
    this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: ColoredBox(
        color: color,
        child: TabBarView(controller: controller, children: children),
      ),
    );
  }
}
