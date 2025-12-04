import 'package:flutter/material.dart';
import 'layout/main_scaffold.dart';

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
      // 若显式设置initialRoute，会覆盖home的默认路由
      // initialRoute: '/home',
      // routes: {},
      home: const MainScaffold(), // 主容器
    );
  }
}
