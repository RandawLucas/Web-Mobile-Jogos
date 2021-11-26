import 'package:flutter/material.dart';

class rotaGeral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova York, EUA"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '\n \n \n \n Nova York, EUA',
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
                'A cidade de Nova York compreende 5 distritos situados no encontro do rio Hudson com o Oceano Atlântico.' +
                    ' No centro da cidade fica Manhattan,' +
                    ' um distrito com alta densidade demográfica que está entre os principais centros comerciais,' +
                    ' financeiros e culturais do mundo. Entre seus pontos emblemáticos, destacam-se arranha-céus,' +
                    ' como o Empire State Building, e o enorme Central Park. O teatro da Broadway fica em meio às luzes de neon da Times Square',
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
