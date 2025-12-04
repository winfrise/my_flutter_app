import 'package:flutter/material.dart';

const rowDivider = SizedBox(width: 20);

class ButtonsWithoutIcon extends StatelessWidget {
  final bool isDisabled;
  const ButtonsWithoutIcon({super.key, required this.isDisabled});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
           ElevatedButton(
              onPressed: isDisabled ? null : () {},
              child: const Text('Elevated'),
            ),
            rowDivider,
            FilledButton(
              onPressed: isDisabled ? null : () {},
              child: const Text('Filled'),
            ),
            rowDivider,
            FilledButton.tonal(
              onPressed: isDisabled ? null : () {},
              child: const Text('Filled tonal'),
            ),
            rowDivider,
            OutlinedButton(
              onPressed: isDisabled ? null : () {},
              child: const Text('Outlined'),
            ),
            rowDivider,
            TextButton(
              onPressed: isDisabled ? null : () {},
              child: const Text('Text'),
            ),
    ]);
  }
}