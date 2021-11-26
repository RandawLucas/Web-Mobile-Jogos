import 'package:flutter/material.dart';

class OitavaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estrada, Algum lugar"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '\n \n \n \n Estrada, Algum Lugar',
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
                'substantivo feminino Caminho, em geral público, mais ou menos largo, que, situado fora do perímetro urbano,' +
                    ' liga uma localidade a outra, e pelo qual transitam pessoas, animais ou veículos.' +
                    ' ... Estrada de rodagem, aquela em que transitam carros, ônibus e caminhões;' +
                    ' rodovia, auto-estrada.',
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
