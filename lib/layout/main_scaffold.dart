import 'package:flutter/material.dart';
import '../pages/cards_page/index.dart';
import '../pages/carousel_page/index.dart';
import '../pages/Home_Page.dart';
import '../pages/buttons_page/index.dart';
import '../pages/tabs_page.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _currentPageIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    ButtonsPage(),
    TabsPage(),
    CarouselPage(),
    CardsPage()
  ];
  final List<BottomNavigationBarItem> _navs = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home), 
        activeIcon: Icon(Icons.home_filled),
        label: '首页'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.smart_button),
        activeIcon: Icon(Icons.smart_button_outlined),
        label: '按钮'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.navigation),
        activeIcon: Icon(Icons.navigation_outlined),
        label: '导航'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.navigation),
        activeIcon: Icon(Icons.navigation_outlined),
        label: '跑马灯'
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.navigation),
        activeIcon: Icon(Icons.navigation_outlined),
        label: '卡片'
      ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPageIndex,
        onTap: (index) => {
          setState(() {
            _currentPageIndex = index;
          })
        },
        items: _navs
      ),
    );
  }
}
