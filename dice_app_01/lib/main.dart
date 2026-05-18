import 'package:flutter/material.dart';
import 'package:frist_app/gradient_container.dart';

void main() {
  runApp(
      MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 92, 153, 213),
        body: GradientContainer.purple(),
      ),
    ),
  );
}

