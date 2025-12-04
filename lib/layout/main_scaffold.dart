import 'package:flutter/material.dart';
import '../pages/Home_Page.dart';
import '../pages/buttons_page.dart';
import '../pages/tabs_page.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  // 导航栏选中索引（初始为3，对应消息页）
  int _selectedIndex = 3;

  // 导航项配置：图标 + 标签 + 路由名称
  final List<Map<String, dynamic>> _navItems = [
    {
      'icon': const Icon(Icons.home_outlined),
      'selectedIcon': const Icon(Icons.home),
      'label': '首页',
      'route': '/home',
    },
    {
      'icon': const Icon(Icons.explore_outlined),
      'selectedIcon': const Icon(Icons.explore),
      'label': '发现',
      'route': '/discover',
    },
    {
      'icon': const Icon(Icons.add_circle_outlined),
      'selectedIcon': const Icon(Icons.add_circle),
      'label': '发布',
      'route': '/publish',
    },
    {
      'icon': const Icon(Icons.message_outlined),
      'selectedIcon': const Icon(Icons.message),
      'label': '消息',
      'route': '/message',
    },
    {
      'icon': const Icon(Icons.person_outlined),
      'selectedIcon': const Icon(Icons.person),
      'label': '我的',
      'route': '/mine',
    },
  ];

  // 处理导航项选中事件
  void _onNavItemSelected(int index) {
    setState(() {
      _selectedIndex = index; // 更新选中状态
    });
    // 跳转对应路由（命名路由方式）
    Navigator.pushReplacementNamed(
      context,
      _navItems[index]['route'],
      // 可选：传递参数
      arguments: {'from': '导航栏', 'index': index},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: [HomePage(), ButtonsPage(), TabsPage()],
        ),
      ),
      // 底部导航栏
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onNavItemSelected,
        indicatorColor: Colors.blue,
        // 构建导航项
        destinations: _navItems
            .map(
              (item) => NavigationDestination(
                icon: item['icon'],
                selectedIcon: item['selectedIcon'],
                label: item['label'],
              ),
            )
            .toList(),
      ),
    );
  }
}
