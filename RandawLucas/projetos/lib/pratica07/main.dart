import 'package:flutter/material.dart';
void main() {
 runApp(
  Center(
    child: Container(
      child: Container(
        padding: EdgeInsets.all(3),
        alignment: Alignment.center,
        child: Image.network(
              'https://picsum.photos/250?image=37'),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.yellow,
      ),
    padding: EdgeInsets.all(40),
    margin: const EdgeInsets.all(25),
    ),
  ),
 );
}