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
          child: Image.network(
            "https://media.giphy.com/media/pt0EKLDJmVvlS/giphy.gif",
          ),
          padding: EdgeInsets.all(80.0),
          width: 400.0,
          height: 400.0,
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow,
          ),
        ),
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButton: Stack(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left:31),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton(
                onPressed: null,
                tooltip: 'Exemplo de botão',
                child: Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}