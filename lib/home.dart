import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/drawer_page.dart';
import 'package:test_app/tabview_page.dart';

/**
 * @author     肖前欣
 * description
 */

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  var tabTitles = [
    '首页',
    '地图',
    '功能',
    '通讯',
    '群组',
  ];

  var tabBarViews = <Widget>[
    TabViewPage('首页'),
    TabViewPage('地图'),
    TabViewPage('功能'),
    TabViewPage('通讯'),
    TabViewPage('群组'),
  ];
  var currentIndex = 0;

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: tabBarViews.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: DrawerPage(),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          tabTitles[currentIndex],
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
      body: _builderBody(context),
    );
  }

  _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      currentIndex: currentIndex,
      selectedLabelStyle: TextStyle(color: Colors.red),
      showUnselectedLabels: true,
      unselectedLabelStyle: TextStyle(color: Colors.grey),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.adb), label: '首页'),
        BottomNavigationBarItem(icon: Icon(Icons.map), label: '地图'),
        BottomNavigationBarItem(icon: Icon(Icons.functions), label: '功能'),
        BottomNavigationBarItem(
            icon: Icon(Icons.ad_units_outlined), label: '通讯'),
        BottomNavigationBarItem(icon: Icon(Icons.group), label: '群组'),
      ],
      onTap: (i) {
        tabController.index = i;
        setState(() {
          currentIndex = i;
        });
      },
    );
  }

  _builderBody(BuildContext context) {
    return TabBarView(
      children: tabBarViews,
      controller: tabController,
    );
  }
}
