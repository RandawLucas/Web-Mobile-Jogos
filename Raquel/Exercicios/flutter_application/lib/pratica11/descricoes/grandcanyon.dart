import 'package:flutter/material.dart';

class TerceiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grand Canyon, EUA"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '\n \n \n \n Grand Canyon, EUA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),

            Container(
              child: Text(
                'O Grand Canyon, no Arizona, é uma formação natural constituída de camadas de rocha vermelha, que revelam milhões de anos da história geológica em seção transversal.'+
                ' De vastas proporções, o cânion tem, em média, 16 km de largura e 1,6 km de profundidade ao longo de seu comprimento de 445 km.'+
                ' Grande parte da área é um parque nacional, com as paisagens impressionantes e as corredeiras de águas bravas do Rio Colorado',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              margin: EdgeInsets.all(80),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_left_outlined),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
    );
  }
}