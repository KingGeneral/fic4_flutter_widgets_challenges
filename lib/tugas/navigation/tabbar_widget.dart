import 'package:flutter/material.dart';

class TabbarWidget extends StatefulWidget {
  const TabbarWidget({super.key});

  @override
  State<TabbarWidget> createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabbarController;
  @override
  initState() {
    super.initState();
    _tabbarController = TabController(length: 3, vsync: this);
    _tabbarController.addListener(() {});
  }

  @override
  void dispose() {
    _tabbarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabbar"),
        bottom: TabBar(
          controller: _tabbarController,
          tabs: [
            Tab(
              icon: Icon(Icons.directions_boat),
            ),
            Tab(
              icon: Icon(Icons.directions_bus),
            ),
            Tab(
              icon: Icon(Icons.directions_ferry),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabbarController,
        children: [
          Center(
            child: Text('Tab 1'),
          ),
          Center(
            child: Text('Tab 2'),
          ),
          Center(
            child: Text('Tab 3'),
          ),
        ],
      ),
    );
  }
}
