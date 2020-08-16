// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:insta/widgets/post_grid.dart';
import 'package:insta/widgets/profile_info.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 300.0,
                collapsedHeight: 300.0,
                flexibleSpace: ProfileInfo(),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    indicatorColor: Colors.white,
                    indicatorPadding: EdgeInsets.all(0.0),
                    labelColor: Colors.grey,
                    unselectedLabelColor: Colors.white,
                    tabs: [
                      Tab(icon: Icon(Icons.grid_on, size: 30.0)),
                      Tab(
                          icon:
                              Icon(Icons.favorite_border_outlined, size: 30.0)),
                      Tab(icon: Icon(Icons.bookmark_border, size: 30.0)),
                    ],
                  ),
                ),
                pinned: true,
                floating: true,
              ),
            ];
          },
          body: Padding(
            padding: const EdgeInsets.only(top: 45.0),
            child: TabBarView(
              children: [
                PostGrid(),
                PostGrid(),
                PostGrid(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
