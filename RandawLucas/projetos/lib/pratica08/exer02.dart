import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
      leading: Icon(Icons.home),
      title: Text('Página Inicial'),
    ),
  body: Center(
    child: Container(
      child: Text(
        'Olá, Mundo!!!',
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      color: Colors.red,
      alignment: Alignment.center,
      width: 200.0,
      height: 100.0,
      margin: const EdgeInsets.all(10.0),
    ),
  ),

  backgroundColor: Colors.blue[900],
  floatingActionButton: FloatingActionButton(
    onPressed: null,
    tooltip: 'Exemplo de botão',
    child: Icon(Icons.add),
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  );
 }
}
