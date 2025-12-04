import 'package:flutter/material.dart';
import 'package:my_flutter_app/pages/cart/index.dart';
import 'package:my_flutter_app/pages/message/index.dart';
import 'package:my_flutter_app/pages/mine/index.dart';
import 'package:my_flutter_app/pages/product/index.dart';
import '../pages/Home_Page.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _currentPageIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    MessagePage(),
    ProductPage(),
    CartPage(),
    MinePage(),
  ];
  final List<BottomNavigationBarItem> _navs = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      activeIcon: Icon(Icons.home_filled),
      label: '首页',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message_outlined, size: 24),
      activeIcon: Icon(Icons.message),
      label: '消息',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.category_outlined, size: 30),
      activeIcon: Icon(Icons.category),
      label: '分类',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add_shopping_cart_outlined),
      activeIcon: Icon(Icons.add_shopping_cart),
      label: '购物车',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle_outlined),
      activeIcon: Icon(Icons.account_circle),
      label: '我的',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPageIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // 解决点击后，移动的问题
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          currentIndex: _currentPageIndex,
          onTap: (index) => {
            setState(() {
              _currentPageIndex = index;
            }),
          },
          items: _navs,
        ),
      ),
    );
  }
}
