import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Container(
        child: Image.network(
            "https://picsum.photos/250?image=37"
        ),
        padding: EdgeInsets.all(15.0),
        width: 400.0,
        height: 400.0,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.yellow,
        ),
      ),
    ),
  );
}