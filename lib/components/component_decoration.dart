import 'package:flutter/material.dart';

class ComponentDecoration extends StatefulWidget {
  final String label;
  final Widget child;
  final String tooltipMessage;

  const ComponentDecoration({
    super.key,
    required this.label,
    required this.child,
    this.tooltipMessage = '',
  });
  @override
  State<ComponentDecoration> createState() => _ComponentDecorationState();
}

class _ComponentDecorationState extends State<ComponentDecoration> {
  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text(widget.label)),
                Tooltip(
                  message: widget.tooltipMessage,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(Icons.info_outline, size: 16),
                  ),
                ),
              ],
            ),
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Theme.of(context).colorScheme.outline),
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Center(child: widget.child),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
