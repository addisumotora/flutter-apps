import 'package:flutter/material.dart';
import 'package:fooderlich/home.dart';
import 'fooderlich_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
        theme: theme,
        title: 'fooderlick app',
        home: const Home()
    );
  }
}
