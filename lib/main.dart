import 'package:flutter/material.dart';
import 'package:new_work/top.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Dwarf code';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Myappbar(),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
