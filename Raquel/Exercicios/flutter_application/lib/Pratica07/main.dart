import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Container(
        child: Image.network('https://picsum.photos/250?image=37'),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.yellow[700],
        ),
        padding: EdgeInsets.all(80),
        margin: const EdgeInsets.all(25),
      ),
    ),
  );
}
