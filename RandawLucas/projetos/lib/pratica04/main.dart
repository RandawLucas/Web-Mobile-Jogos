import 'package:flutter/material.dart';
void main() {
 runApp(
  Row(
  textDirection: TextDirection.ltr,
  children: [
    Expanded(
        child: Image(
          image: NetworkImage(
            'https://picsum.photos/250?image=10',
          ),
        ),
     ),
     Expanded(
        child: Image(
          image: NetworkImage(
            'https://picsum.photos/250?image=25',
          ),
        ),
     ),
     Expanded(
        child: Image(
          image: NetworkImage(
            'https://picsum.photos/250?image=15',
          ),
        ),
     ),
  ],
  ),
 );
}