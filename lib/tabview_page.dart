import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'content_page.dart';
import 'drawer_page.dart';

/**
 * @author     肖前欣
 * description
 */

class TabViewPage extends StatefulWidget {
  String title;

  TabViewPage(this.title, {Key? key}) : super(key: key);

  @override
  State<TabViewPage> createState() => _TabViewPageState();
}

class _TabViewPageState extends State<TabViewPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController =
      TabController(length: tabbarViews.length, vsync: this);
  late var tabbarViews = [
    ContentPage('${widget.title}选项1'),
    ContentPage('${widget.title}选项1'),
    ContentPage('${widget.title}选项1'),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(child: SizedBox.expand(child: _buildBody(context)));
  }

  _buildBody(BuildContext context) {
    return Column(
      children: [
        _tabbar(context),
        Expanded(
            child: TabBarView(
          children: tabbarViews,
          controller: _tabController,
        ))
      ],
    );
  }

  _tabbar(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TabBar(
        unselectedLabelColor: Colors.grey,
        labelColor: Colors.blue,
        controller: _tabController,
        tabs: [
          Tab(text: '${widget.title}选项1'),
          Tab(text: '${widget.title}选项2'),
          Tab(text: '${widget.title}选项3'),
        ],
      ),
    );
  }
}
