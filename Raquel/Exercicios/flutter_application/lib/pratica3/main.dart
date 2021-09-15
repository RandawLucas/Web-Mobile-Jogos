import 'package:flutter/material.dart';

void main() {
  String nome = "Ana";
  runApp(
    Center(
      child: RichText(
        textDirection: TextDirection.ltr,
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
                decorationStyle: TextDecorationStyle.double,
              ),
            ),
            TextSpan(
              text: ' !',
            ),
            TextSpan(
                text: '\nHoje é Quinta-Feira!',
                style: TextStyle(
                  color: Colors.red,
                  backgroundColor: Colors.orange,
                )),
            TextSpan(
              text: '\nBom dia!',
            ),
            TextSpan(
              text:
                  '\n\nHoje, você terá que escrever um aplicativo em flutter. O aplicativo deve imprimir um texto na tela. O texto possui trechos com estilos diferentes.',
              style: TextStyle(
                color: Colors.black,
                backgroundColor: Colors.black,
                fontSize: 20,
              ),
            ),
            TextSpan(
              text: '\n\n Boa prática!',
              style: TextStyle(
                color: Colors.purple,
                backgroundColor: Colors.black,
                fontSize: 20,
              ),
            ),
            TextSpan(
              text: '\n=',
              style: TextStyle(
                color: Colors.grey,
                backgroundColor: Colors.black,
                fontSize: 20,
              ),
            ),
            TextSpan(
              text: 'D',
              style: TextStyle(
                color: Colors.red,
                backgroundColor: Colors.white,
                fontSize: 20,
              ),
            ),
            TextSpan(
              text: 'H',
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
