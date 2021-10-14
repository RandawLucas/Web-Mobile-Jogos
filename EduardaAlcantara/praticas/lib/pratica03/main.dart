import 'package:flutter/material.dart';

void main() {
  String nome = "Ana";

  runApp(
    Center(
      child: RichText(
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "Olá, ",
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
          ), //TextStyle.
          children: <TextSpan>[
            TextSpan(
              text: '$nome',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.dashed,
                backgroundColor: Colors.green,
              ),
            ),
            TextSpan(
              text: '!',
            ),
            TextSpan(
              text: '\nHoje é quinta-feira!',
              style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.yellow,
              ),
            ),
            TextSpan(
              text: '\nBom dia!',
            ),
            TextSpan(
              text: '\n\nHoje, você terá que escrever um aplicativo em flutter. O aplicativo deve imprimir um texto na tela. O texto possui trechos com estilos diferentes.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                backgroundColor: Colors.black,
              ),
            ),
            TextSpan(
              text: '\n\n\nBoa prática!',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 16,
                backgroundColor: Colors.black,
              ),
            ),
            TextSpan(
              text: '\n=',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                backgroundColor: Colors.black,
              ),
            ),
            TextSpan(
              text: 'D',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
                backgroundColor: Colors.black,
              ),
            ),
            TextSpan(
              text: 'H',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                backgroundColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}