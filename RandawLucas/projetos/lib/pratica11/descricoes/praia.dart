import 'package:flutter/material.dart';

class QuartaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Praia, Algum lugar"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '\n \n \n \n Praia, Algum Lugar',
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
                'A praia para a geografia é a área conhecida como faixa de areia entre a população.' +
                    ' A praia é um ambiente natural localizado exatamente na zona de encontro entre o mar e a terra, ' +
                    'região que nós chamamos comumente de área costeira, conceituou o professor.',
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
