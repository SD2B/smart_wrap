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
            wrapAlignment: WrapAlignment.center,
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
