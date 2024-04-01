import 'package:flutter/material.dart';
import 'package:portia/features/home/home.dart';

class PortiaApp extends StatelessWidget {
  const PortiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
