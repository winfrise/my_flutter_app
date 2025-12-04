import 'package:flutter/material.dart';
import 'package:my_flutter_app/components/component_decoration.dart';
import 'package:my_flutter_app/components/component_group_decoration.dart';
import 'package:my_flutter_app/components_function/custom_common_buttons.dart';
import 'package:my_flutter_app/components_function/custom_navigation_bar.dart';
import 'package:my_flutter_app/components_function/custom_tab_bar.dart';
import 'package:my_flutter_app/components_function/custom_top_app_bars.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              ComponentGroupDecoration(
                label: 'Navigation',
                children: [
                  ComponentDecoration(
                    label: 'Tabs',
                    tooltipMessage: '这是Tab导航',
                    child: CustomTabBar(),
                  ),
                  ComponentDecoration(
                    label: 'Navigation Bar',
                    tooltipMessage: '这是导航Bar',
                    child: CustomNavigationBar(),
                  ),
                ],
              ),
              ComponentDecoration(
                label: 'Common Buttons',
                child: CustomCommonButtons(),
              ),
              ComponentDecoration(
                label: 'Top App Bars',
                child: CustomTopAppBars(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
