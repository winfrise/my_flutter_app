import 'package:flutter/material.dart';

class ButtonWithoutIcon extends StatelessWidget {
  final bool isDisabled;
  const ButtonWithoutIcon({super.key, required this.isDisabled});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: isDisabled ? null : () {},
          child: const Text('Elevated'),
        ),
      ],
    );
  }
}

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CustomCommonButtons extends StatelessWidget {
  const CustomCommonButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonWithIcon(),
        ButtonWithoutIcon(isDisabled: false),
        SizedBox(height: 20),
        ButtonWithoutIcon(isDisabled: true),
      ],
    );
  }
}
