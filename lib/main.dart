import 'package:flutter/material.dart';
import 'package:flutter_progress_bar/line_animate.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: LIne(
            pointColor: Colors.amber,
          ),
        ),
      ),
    );
  }
}
