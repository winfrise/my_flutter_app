import 'package:flutter/material.dart';

const rowDivider = SizedBox(width: 20);
const colDivider = SizedBox(height: 10);


class ButtonsWithIcon extends StatelessWidget {
  final bool disabled;
  const ButtonsWithIcon({super.key, required this.disabled});

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Icon'),
              ),
              rowDivider,
              FilledButton.icon(
                onPressed: () {},
                label: const Text('Icon'),
                icon: const Icon(Icons.add),
              ),
              rowDivider,
              FilledButton.tonalIcon(
                onPressed: () {},
                label: const Text('Icon'),
                icon: const Icon(Icons.add),
              ),
              rowDivider,
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Icon'),
              ),
              rowDivider,
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Icon'),
              ),
            ],
    );
  }
}