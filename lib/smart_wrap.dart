library smart_wrap;

import 'package:flutter/material.dart';

/// A widget that wraps its children in a specified layout.
///
/// The [SmartWrap] widget can arrange its children in a row, column, or wrap layout,
/// providing customizable alignment and spacing options.
///
/// Example usage:
/// ```dart
/// SmartWrap(
///   type: WrapType.row,
///   children: [
///     Text('Item 1'),
///     Text('Item 2'),
///     Text('Item 3'),
///   ],
/// );
/// ```
class SmartWrap extends StatelessWidget {
  /// Creates a [SmartWrap] widget.
  ///
  /// The [type] parameter is required and determines how the children are arranged.
  /// The [children] parameter must not be null and specifies the list of children
  /// to display.
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

  /// The layout type for the [SmartWrap] widget.
  final WrapType type;

  /// The list of children widgets to display inside the [SmartWrap].
  final List<Widget> children;

  /// The alignment of the children along the main axis.
  final MainAxisAlignment? mainAxisAlignment;

  /// The alignment of the children along the cross axis.
  final CrossAxisAlignment? crossAxisAlignment;

  /// The size of the children along the main axis.
  final MainAxisSize? mainAxisSize;

  /// The direction of the text.
  final TextDirection? textDirection;

  /// The vertical direction for layout.
  final VerticalDirection? verticalDirection;

  /// The amount of space between the children along the main axis.
  final double? spacing;

  /// The amount of space between the runs of children.
  final double? runSpacing;

  /// The alignment of the children within the wrap.
  final WrapAlignment? wrapAlignment;

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

/// Enum that defines the layout types for the [SmartWrap] widget.
enum WrapType { row, column, wrap }
