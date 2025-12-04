import 'package:flutter/material.dart';
import 'layout/main_scaffold.dart';
import 'pages/Home_Page.dart';
import 'pages/buttons_page.dart';
import 'pages/tabs_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/buttons': (context) => const ButtonsPage(),
        '/tabs': (context) => const TabsPage(),
      },
      home: const MainScaffold(), // 主容器
    );
  }
}
