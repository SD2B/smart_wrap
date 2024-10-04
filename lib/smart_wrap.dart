library smart_wrap;

import 'package:flutter/material.dart';

class SmartWrap extends StatelessWidget {
  final WrapType type;
  final List<Widget> children;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisSize? mainAxisSize;
  final TextDirection? textDirection;
  final VerticalDirection? verticalDirection;
  final double? spacing;
  final double? runSpacing;
  final WrapAlignment? wrapAlignment;

  const SmartWrap({
    super.key,
    required this.type,
    required this.children,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.mainAxisSize,
    this.textDirection,
    this.verticalDirection,
    this.spacing,
    this.runSpacing,
    this.wrapAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return type == WrapType.row
        ? Row(
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
            mainAxisSize: mainAxisSize ?? MainAxisSize.max,
            textDirection: textDirection,
            verticalDirection: verticalDirection ?? VerticalDirection.down,
            children: children,
          )
        : type == WrapType.column
            ? Column(
                mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
                crossAxisAlignment:
                    crossAxisAlignment ?? CrossAxisAlignment.start,
                mainAxisSize: mainAxisSize ?? MainAxisSize.max,
                textDirection: textDirection,
                verticalDirection: verticalDirection ?? VerticalDirection.down,
                children: children,
              )
            : Wrap(
                alignment: wrapAlignment ?? WrapAlignment.center,
                spacing: spacing ?? 0.0,
                runSpacing: runSpacing ?? 0.0,
                children: children,
              );
  }
}

enum WrapType { row, column, wrap }
