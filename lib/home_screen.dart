import 'package:flutter/material.dart';

import 'offstage_tab.dart';
import 'opacity_tab.dart';
import 'visibility_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Widget Hide-Show'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Offstage',
                ),
                Tab(
                  text: 'Opacity',
                ),
                Tab(
                  text: 'Visibility',
                ),
              ],
            ),
            elevation: 2.0,
          ),
          body: const TabBarView(
            children: [OffstageTab(), OpacityTab(), VisibilityTab()],
          ),
        ));
  }
}
