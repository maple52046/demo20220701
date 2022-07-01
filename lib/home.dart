import 'package:flutter/material.dart';

import 'models/statistics.dart';
import 'widgets/lists.dart';
import 'widgets/grids.dart';
import 'widgets/profiles.dart';
import 'widgets/utils/scaffolds.dart';
import 'widgets/utils/tabbars.dart';

const _tabs = [Tab(text: 'Grid'), Tab(text: 'List')];
const _topRadius = Radius.circular(20);

class MyHomePage extends StatefulWidget {
  final String bio;
  final String name;
  final SocialStatisticData statistic;
  const MyHomePage({
    required this.name,
    required this.bio,
    required this.statistic,
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColorfulScaffold(
      backgroundColor: const Color.fromRGBO(250, 250, 250, 0.3),
      gradient: const LinearGradient(colors: [
        Color.fromRGBO(247, 220, 111, 1),
        Color.fromRGBO(243, 156, 18, 1),
      ]),
      appBar: AppBar(
        title: Text(widget.name),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        bottom: false,
        child: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, _) => [
            SliverToBoxAdapter(
              child: Profile(
                bio: widget.bio,
                socialStatisticData: widget.statistic,
              ),
            ),
          ],
          body: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: _topRadius,
              topRight: _topRadius,
            ),
            child: ColoredBox(
              color: Colors.white,
              child: DefaultTabController(
                length: _tabs.length,
                child: CustomScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _scrollController,
                  slivers: const [
                    SliverPersistentHeader(
                      delegate: SliverTabBarDelegate(
                        tabBar: TabBar(tabs: _tabs),
                        topRadius: Radius.zero,
                        backgroundColor: Colors.white,
                      ),
                      pinned: true,
                    ),
                    SliverTabBarView(
                      color: Color.fromRGBO(234, 236, 238, 1),
                      children: [
                        ContentGrid(
                          itemCount: 50,
                          itemColor: Color.fromRGBO(245, 183, 177, 1),
                        ),
                        ContentList(
                          itemCount: 50,
                          itemColor: Color.fromRGBO(169, 223, 191, 1),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
