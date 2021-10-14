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
          child: Container(
            child: Image(
              alignment: Alignment.center,
              image: NetworkImage(
                  'https://media.giphy.com/media/pt0EKLDJmVvlS/giphy.gif'),
            ),
            padding: EdgeInsets.all(50),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow[700],
          ),
          alignment: Alignment.center,
          padding: EdgeInsets.all(40),
          margin: const EdgeInsets.all(50.0),
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
