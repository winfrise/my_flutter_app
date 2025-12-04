import 'package:flutter/material.dart';
import 'package:my_flutter_app/components/component_decoration.dart';
import 'package:my_flutter_app/components/component_group_decoration.dart';
import 'package:my_flutter_app/pages/buttons_page/components/buttons_with_icon.dart';
import 'package:my_flutter_app/pages/buttons_page/components/buttons_without_icon.dart';

const colDivider = SizedBox(height: 10);

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentGroupDecoration(
      label: '按钮演示', 
      children: [
        ComponentDecoration(
          label: '普通按钮', 
          child: Column(
            children: [
              ButtonsWithIcon(disabled: false),
              colDivider,
              ButtonsWithIcon(disabled: true),
              colDivider,
              ButtonsWithoutIcon(isDisabled: false),
              colDivider,
              ButtonsWithoutIcon(isDisabled: true),
            ],
          )
        ),
        ComponentDecoration(label: '浮动按钮', child: Column(
          children: [],
        ))
      ]
    );
  }
}
