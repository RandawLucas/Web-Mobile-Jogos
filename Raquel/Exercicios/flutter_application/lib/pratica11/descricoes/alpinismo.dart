import 'package:flutter/material.dart';

class NonaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alpinismo, Algum lugar"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '\n \n \n \n Alpinismo, Algum Lugar',
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
                'O alpinismo (também chamado de montanhismo)' +
                    ' é a prática esportiva de escalar montanhas com o uso de equipamento específico' +
                    ' (sapatilhas de escalada, cordas, cadeirinhas, freios, mosquetões, etc.).' +
                    ' ... Quando realizado na cidade, o esporte é chamado de rapel urbano.',
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
