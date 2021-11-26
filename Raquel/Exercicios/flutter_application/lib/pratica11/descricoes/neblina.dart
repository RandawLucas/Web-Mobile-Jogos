import 'package:flutter/material.dart';

class SextaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Neblina, Algum lugar"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '\n \n \n \n Neblina, Algum Lugar',
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
                'A neblina é formada pela suspensão de minúsculas gotículas de água numa camada de ar próxima ao chão.' +
                    ' ... Esse fenômeno, também conhecido como nevoeiro, é mais comum em lugares frios,' +
                    ' úmidos e elevados e ocorre devido à queda da temperatura e à conseqüente condensação do vapor de água junto ao solo.',
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
