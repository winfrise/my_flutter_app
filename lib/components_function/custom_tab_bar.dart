import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: TabController(length: 3, vsync: this),
      tabs: [
        Tab(
          icon: Icon(Icons.videocam_outlined),
          text: 'Video',
          iconMargin: EdgeInsets.only(bottom: 0.0),
        ),
        Tab(
          icon: Icon(Icons.photo_outlined),
          text: 'Photos',
          iconMargin: EdgeInsets.only(bottom: 0.0),
        ),
        Tab(
          icon: Icon(Icons.audiotrack_sharp),
          text: 'Audio',
          iconMargin: EdgeInsets.only(bottom: 0.0),
        ),
      ],
    );
  }
}
