import 'package:flutter/material.dart';
import 'package:sample/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          colorOne: Colors.indigo,
          colorTwo: Colors.lightBlue,
        ),
      ),
    ),
  );
}
