import 'dart:ui';

import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith( 
        dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch}
      ),
      theme: theme,
      title: 'Fooderlich',
      home: const Home(),
    );
  }
}
