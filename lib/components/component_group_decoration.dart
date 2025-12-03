import 'package:flutter/material.dart';

class ComponentGroupDecoration extends StatelessWidget {
  final String label;
  final List<Widget> children;
  const ComponentGroupDecoration({
    super.key,
    required this.label,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return FocusTraversalGroup(
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        color: Theme.of(
          context,
        ).colorScheme.surfaceContainerHighest.withAlpha(77),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Center(
            child: Column(
              children: [
                Text(label, style: Theme.of(context).textTheme.titleLarge),
                SizedBox(height: 10),
                ...children,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
