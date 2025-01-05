import 'package:flutter/material.dart';

class SmartExpand extends StatelessWidget {
  final Widget child;
  final bool disableExpand;
  final int flex;

  const SmartExpand({
    super.key,
    required this.child,
    this.disableExpand = true,
    this.flex = 1,
  });

  @override
  Widget build(BuildContext context) {
    return disableExpand
        ? Expanded(
            flex: flex,
            child: child,
          )
        : child;
  }
}
