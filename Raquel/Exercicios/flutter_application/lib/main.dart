import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Text(
        'Olá, Mundo!',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.green,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ), //TextStyle.
      ), //Text.
    ), //Center.
  );
}
