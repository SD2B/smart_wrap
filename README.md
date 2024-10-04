
# SmartWrap

**SmartWrap** is a flexible widget that allows you to create layouts using Row, Column, or Wrap, with configurable properties such as alignment, spacing, and axis direction.

## Features

- **Row**, **Column**, and **Wrap** layout options.
- Customize **MainAxisAlignment**, **CrossAxisAlignment**, and **MainAxisSize**.
- Control the **TextDirection** and **VerticalDirection** for Row and Column.
- Specify **spacing** and **runSpacing** for Wrap.

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  smart_wrap: ^0.0.1
```

Run the following command:

```bash
flutter pub get
```

## Usage

Here’s an example of how to use **SmartWrap**:

```dart
import 'package:flutter/material.dart';
import 'package:smart_wrap/smart_wrap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('SmartWrap Example')),
        body: Center(
          child: SmartWrap(
            type: WrapType.wrap, // Choose between Row, Column, and Wrap
            spacing: 10.0,
            runSpacing: 10.0,
            wrapAlignment: Alignment.center,
            children: [
              Container(width: 50, height: 50, color: Colors.red),
              Container(width: 50, height: 50, color: Colors.green),
              Container(width: 50, height: 50, color: Colors.blue),
              Container(width: 50, height: 50, color: Colors.orange),
            ],
          ),
        ),
      ),
    );
  }
}
```

### Available Parameters:

- **`type`**: Choose between `WrapType.row`, `WrapType.column`, or `WrapType.wrap`.
- **`children`**: List of child widgets to display.
- **`mainAxisAlignment`**: How the children should be placed along the main axis (for Row and Column).
- **`crossAxisAlignment`**: How the children should be placed along the cross axis (for Row and Column).
- **`mainAxisSize`**: The size of the main axis (for Row and Column).
- **`textDirection`**: Text alignment in horizontal direction (for Row and Column).
- **`verticalDirection`**: Controls the vertical direction (for Row and Column).
- **`spacing`**: Horizontal spacing between children in Wrap.
- **`runSpacing`**: Vertical spacing between lines in Wrap.
- **`wrapAlignment`**: Alignment for the Wrap widget.

## Example

### 1. Wrap Example:

```dart
SmartWrap(
  type: WrapType.wrap,
  spacing: 10.0,
  runSpacing: 10.0,
  children: [
    Container(width: 50, height: 50, color: Colors.red),
    Container(width: 50, height: 50, color: Colors.green),
    Container(width: 50, height: 50, color: Colors.blue),
  ],
)
```

### 2. Row Example:

```dart
SmartWrap(
  type: WrapType.row,
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Container(width: 50, height: 50, color: Colors.red),
    Container(width: 50, height: 50, color: Colors.green),
    Container(width: 50, height: 50, color: Colors.blue),
  ],
)
```

### 3. Column Example:

```dart
SmartWrap(
  type: WrapType.column,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Container(width: 50, height: 50, color: Colors.red),
    Container(width: 50, height: 50, color: Colors.green),
    Container(width: 50, height: 50, color: Colors.blue),
  ],
)
```
